Class {
	#name : #DelugeObject,
	#superclass : #Object,
	#traits : 'TMXDescription',
	#classTraits : 'TMXDescription classTrait',
	#category : #'Synthstrom-Deluge'
}

{ #category : #testing }
DelugeObject class >> canBeRoot [
	"Whether the node that this class represents can be root"
	^ false
]

{ #category : #'instance creation' }
DelugeObject class >> fromFile: aFile [
	| content dom |
	content := self wrapXMLString: aFile contents in: self xmlElementName.
	dom := XMLDOMParser parse: content.
	^ self new magritteDescription fromXmlNode: dom root
]

{ #category : #generating }
DelugeObject class >> generateClassesFromFile: aFile [ 
	"I should be sent to a subclass for this to be meaningful"
	^ self generateClassesFromFile: aFile containerNodeName: self xmlElementName
]

{ #category : #generating }
DelugeObject class >> generateClassesFromFile: aFile containerNodeName: containerNodeName [
	"Generates various subclasses of mine that represent each of the xml nodes contained in an XML file. The container node is what I will wrap contents of the XML file. It will be represented by a class of its own. So, if you're trying to parse a SYNT*.XML file, you'd specify 'synth' as the container node name - that will result in DelugeSynth class, and the contents of the XML will be derived from this class, so to speak... If you're regenerating classes, i.e. they already exist in the image - use the class's ==xmlElementName== - i.e. DelugeSynth xmlElementName. These classes are answer truthfully to ==canBeRoot==."

	| content dom gen |
	content := self wrapXMLString: aFile contents in: containerNodeName.
	dom := XMLDOMParser parse: content.
	gen := XOGStructureGenerator new.
	gen packageName: self package name asString.
	gen classPrefix: 'Deluge'.
	gen rootClassName: self name asString.

	"run the generator; this will NOT create the code yet"
	gen processDocument: dom.
	gen changes allRefactoringChanges do: [ :change | 
		RBRefactoryChangeManager instance performChange: change ]
]

{ #category : #generating }
DelugeObject class >> generateConstantsAccessorsFromReferences: refs [
	| allChanges cls valueName classVarName classMethodName clsChange methChange becomeMethodName |

	allChanges := OrderedCollection new.
	refs do: [ :v | 
		cls := Smalltalk at: v key key asSymbol.
		valueName := v value trimBoth.
		valueName ifEmpty: [ valueName := 'Empty' ].

		classVarName := v key value greaseString capitalized
		                , valueName capitalized.

		(cls classVarNames includes: classVarName asSymbol) ifFalse: [ 
			clsChange := RBAddClassVariableChange new.
			clsChange class: cls variable: classVarName.
			allChanges add: clsChange ].

		classMethodName := v key value greaseString , valueName capitalized.

		cls class methodDict at: classMethodName asSymbol ifAbsent: [ 
			methChange := RBAddMethodChange new.
			methChange class: cls class protocol: #accessing source: ('{1}
	^ {2} ifNil: [ {2} := ''{3}'' ]' format:
					 (Array with: classMethodName with: classVarName with: v value)).
			allChanges add: methChange ].

		becomeMethodName := 'be' , classVarName.
		cls methodDict at: becomeMethodName ifAbsent: [ 
			methChange := RBAddMethodChange new.
			methChange class: cls protocol: #configuring source: ('{1}
	{2} := self {3}' format: { 
						 becomeMethodName.
						 v key value.
						 classMethodName }).
			allChanges add: methChange ] ].
	(CBChangesBrowser changes: allChanges) open
]

{ #category : #'as yet unclassified' }
DelugeObject class >> wrapXMLString: aString in: parentNodeName [
	^ ('^( *<\?xml [^>]*>)' asRegex
		 copy: aString
		 translatingMatchesUsing: [ :match | 
		 match , '<' , parentNodeName , '>' ]) , '</' , parentNodeName , '>'
]

{ #category : #'as yet unclassified' }
DelugeObject >> allReferencedConstants [
	| results traveler |
	traveler := ObjectTraveler on: self.
	results := OrderedCollection new.
	[ traveler moveToNextReference ] whileTrue: [ 
		| ref |
		ref := traveler currentReference.
		(ref isString and: [ (ref beginsWith: '0x') not ]) ifTrue: [ 
			results add: traveler currentNode className asSymbol
				-> (traveler currentNode class instVarNames at:
						 traveler currentReferenceIndex)
				->
				(traveler currentNode instVarAt: traveler currentReferenceIndex) ] ].
	^ results
]
