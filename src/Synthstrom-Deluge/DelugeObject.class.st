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

{ #category : #'as yet unclassified' }
DelugeObject class >> generateClassesFromFile: aFile [ 
	"I should be sent to a subclass for this to be meaningful"
	^ self generateClassesFromFile: aFile containerNodeName: self xmlElementName
]

{ #category : #'as yet unclassified' }
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

{ #category : #'as yet unclassified' }
DelugeObject class >> wrapXMLString: aString in: parentNodeName [
	^ ('^( *<\?xml [^>]*>)' asRegex
		 copy: aString
		 translatingMatchesUsing: [ :match | 
		 match , '<' , parentNodeName , '>' ]) , '</' , parentNodeName , '>'
]
