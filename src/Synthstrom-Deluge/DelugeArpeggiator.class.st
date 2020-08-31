Class {
	#name : #DelugeArpeggiator,
	#superclass : #DelugeObject,
	#instVars : [
		'mode',
		'numOctaves',
		'syncLevel'
	],
	#classVars : [
		'ModeBoth',
		'ModeDown',
		'ModeOff',
		'ModeUp'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeArpeggiator class >> modeBoth [
	^ ModeBoth ifNil: [ ModeBoth := 'both' ]
]

{ #category : #accessing }
DelugeArpeggiator class >> modeDown [
	^ ModeDown ifNil: [ ModeDown := 'down' ]
]

{ #category : #accessing }
DelugeArpeggiator class >> modeOff [
	^ ModeOff ifNil: [ ModeOff := 'off' ]
]

{ #category : #accessing }
DelugeArpeggiator class >> modeUp [
	^ ModeUp ifNil: [ ModeUp := 'up' ]
]

{ #category : #accessing }
DelugeArpeggiator class >> xmlElementName [
	^ 'arpeggiator'
]

{ #category : #comparing }
DelugeArpeggiator >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ mode = anObject mode and: [ 
		  numOctaves = anObject numOctaves and: [ 
			  syncLevel = anObject syncLevel ] ]
]

{ #category : #configuring }
DelugeArpeggiator >> beModeBoth [
	mode := self class modeBoth
]

{ #category : #configuring }
DelugeArpeggiator >> beModeDown [
	mode := self class modeDown
]

{ #category : #configuring }
DelugeArpeggiator >> beModeOff [
	mode := self class modeOff
]

{ #category : #configuring }
DelugeArpeggiator >> beModeUp [
	mode := self class modeUp
]

{ #category : #'magritte description' }
DelugeArpeggiator >> descriptionMode [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #mode;
		label: 'mode';
		priority: 3;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeArpeggiator >> descriptionNumOctaves [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #numOctaves;
		label: 'numOctaves';
		priority: 2;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeArpeggiator >> descriptionSyncLevel [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #syncLevel;
		label: 'syncLevel';
		priority: 1;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #comparing }
DelugeArpeggiator >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ mode hash bitXor: (numOctaves hash bitXor: syncLevel hash)
]

{ #category : #accessing }
DelugeArpeggiator >> mode [
	^ mode
]

{ #category : #accessing }
DelugeArpeggiator >> mode: anObject [
	mode := anObject
]

{ #category : #accessing }
DelugeArpeggiator >> numOctaves [
	^ numOctaves
]

{ #category : #accessing }
DelugeArpeggiator >> numOctaves: anObject [
	numOctaves := anObject
]

{ #category : #accessing }
DelugeArpeggiator >> syncLevel [
	^ syncLevel
]

{ #category : #accessing }
DelugeArpeggiator >> syncLevel: anObject [
	syncLevel := anObject
]
