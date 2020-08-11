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
	#category : #'Synthstrom-Deluge'
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
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeArpeggiator >> descriptionNumOctaves [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #numOctaves;
		label: 'numOctaves';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeArpeggiator >> descriptionSyncLevel [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #syncLevel;
		label: 'syncLevel';
		priority: 3;
		beXmlElement;
		yourself
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
