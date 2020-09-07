"
I am a base object for representing instruments and their parameters of the Synthstrom's Deluge.

I exist for a few reasons:
1. Grouping all of the instrument and param types
2. Providing utility methods for reading from and writing to XML files.
3. Housing (class side) methods for generating classes that represent Deluge's instruments and parameters. In fact, all of my subclasses had been generated using those methods. See notes below for more info.

# Containers

My subclasses merely represent the XML structure of Deluge's file format. There are two types of classes - containers and the rest. Containers represent actual files - i.e. DelugeKitContainer is a KIT*.XML file, DelugeSynthContainer - SYNTH*.XML file. The rest of the subclasses represent data within those containers.

# Reading from XML files:

Reading must be done using one of the container files:

	kit := DelugeKitContainer fromFile: '/path/tp/KIT000.XML'.

#Writing container types back to XML file:

	kit toFile: '/path/to/KIT001.XML'.

# Generating subclasses

To generate subclasses, which might be needed if new firmware introduced changes to the format:

	DelugeObject generateClassesFromFile: '/path/to/KIT000.XML' containerNodeName: 'kitContainer'.
	
That will generate DelugeKitContainer class, from the specified XML. This is how that class was generated.

You may also want to extract any constants used in the XML:

	kit := DelugeKitContainer fromFile: '/path/tp/KIT000.XML'.
	DelugeObject generateConstantsAccessorsFromReferences: kit allReferencedConstants.

This may make more sense to do over a larger pool of files in order to capture all of the known constants. The result is that each class that uses string params, will define class variables for each string value, class side accessors for those variables, lazily initializing the class vars; and instance side methods for configuring the instance to use that constant value. (i.e. #beLpfMode24dB).

Be sure to check that the generated classes did not destroy existing variables, or left the class with variables missing...
"
Class {
	#name : #DelugeObject,
	#superclass : #Object,
	#traits : 'TMXDescription',
	#classTraits : 'TMXDescription classTrait',
	#category : #'Synthstrom-Deluge-Core'
}

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
	gen := DelugeStructureGenerator new.
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
	"Takes an array of references produced by #allReferencedConstants and produces a change set for defining and accessing those constants via methods"

	| allChanges cls valueName classVarName classMethodName clsChange methChange becomeMethodName |

	allChanges := OrderedCollection new.
	refs do: [ :v | 
		cls := Smalltalk at: v key key asSymbol.
		valueName := v value trimBoth.
		valueName ifEmpty: [ valueName := 'Empty' ].
		classVarName := v key value greaseString capitalized
		                , valueName capitalized copyWithoutAll:
			                CharacterSet separatorsAndPunctuation.
		(classVarName asLowercase includesSubstring: 'filename') ifFalse: [ 
			(cls classVarNames includes: classVarName asSymbol) ifFalse: [ 
				clsChange := RBAddClassVariableChange new.
				clsChange class: cls variable: classVarName.
				allChanges add: clsChange ].

			classMethodName := v key value greaseString , valueName capitalized 
				                   copyWithoutAll:
				                   CharacterSet separatorsAndPunctuation.

			cls class methodDict at: classMethodName asSymbol ifAbsent: [ 
				methChange := RBAddMethodChange new.
				methChange class: cls class protocol: #accessing source: ('{1}
	^ {2} ifNil: [ {2} := ''{3}'' ]' format:
						 (Array with: classMethodName with: classVarName with: v value)).
				allChanges add: methChange ].

			becomeMethodName := 'be' , classVarName.
			cls methodDict at: becomeMethodName asSymbol ifAbsent: [ 
				methChange := RBAddMethodChange new.
				methChange class: cls protocol: #configuring source: ('{1}
	{2} := self class {3}' format: { 
							 becomeMethodName.
							 v key value.
							 classMethodName }).
				allChanges add: methChange ] ] ].
	allChanges ifEmpty: [ ^ self ].
	(CBChangesBrowser changes: allChanges) open
]

{ #category : #testing }
DelugeObject class >> isContainer [
	"Whether the corresponding XML element is a container. Container elements are used to wrap contents of XML files so that we have one root and a corresponding class for reading and writing those files. For example - SYNTH000.XML will be represented by DelugeSynthContainer."

	^ false
]

{ #category : #formatting }
DelugeObject class >> wrapXMLString: aString in: parentNodeName [
	^ ('^( *<\?xml [^>]*>)' asRegex
		 copy: aString
		 translatingMatchesUsing: [ :match | 
		 match , '<' , parentNodeName , '>' ]) , '</' , parentNodeName , '>'
]

{ #category : #'as yet unclassified' }
DelugeObject class >> xmlHeader [
	^ '<?xml version="1.0" encoding="UTF-8"?>'
]

{ #category : #accessing }
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

{ #category : #initialization }
DelugeObject >> initializeOld [
	super initialize.

	(self magritteDescription children select: [ :each | 
		 each isKindOf: MAToOneRelationDescription ]) do: [ :description | 
		self
			perform: description accessor writeSelector
			with: description classes anyOne new ].

	(self magritteDescription children select: [ :each | 
		 each isKindOf: MAToManyRelationDescription ]) do: [ :description | 
		self
			perform: description accessor writeSelector
			with: (OrderedCollection with: description classes anyOne new) ]
]

{ #category : #writing }
DelugeObject >> toFile: aFile [
	| fileRef xml |

	fileRef := aFile asFileReference.
	xml := self magritteDescription toXml: self.
	self class isContainer ifTrue: [ xml := self unwrapXMLString: xml ].
	fileRef ifExists: [ fileRef delete ].
	fileRef ensureCreateFile.
	fileRef writeStream
		nextPutAll: self class xmlHeader;
		nextPut: Character lf;
		nextPutAll: xml;
		flush
]

{ #category : #writing }
DelugeObject >> unwrapXMLString: xml [
	| str pfx sfx |

	str := xml trimBoth.
	pfx := '<{1}>' format: { self class xmlElementName }.
	(str beginsWith: pfx) ifTrue: [ 
		str := str copyFrom: pfx size + 1 to: str size ].
	sfx := '</{1}>' format: { self class xmlElementName }.
	(str endsWith: sfx) ifTrue: [ 
		str := str copyFrom: 1 to: str size - sfx size ].
	^ str
]
