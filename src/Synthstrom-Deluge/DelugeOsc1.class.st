Class {
	#name : #DelugeOsc1,
	#superclass : #DelugeObject,
	#instVars : [
		'cents',
		'fileName',
		'loopMode',
		'reversed',
		'timeStretchAmount',
		'timeStretchEnable',
		'transpose',
		'type',
		'zone',
		'sampleRanges',
		'retrigPhase'
	],
	#classVars : [
		'TypeSample'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeOsc1 class >> typeAnalogSaw [
	^ TypeAnalogSaw ifNil: [ TypeAnalogSaw := 'analogSaw' ]
]

{ #category : #accessing }
DelugeOsc1 class >> typeAnalogSquare [
	^ TypeAnalogSquare ifNil: [ TypeAnalogSquare := 'analogSquare' ]
]

{ #category : #accessing }
DelugeOsc1 class >> typeSample [
	^ TypeSample ifNil: [ TypeSample := 'sample' ]
]

{ #category : #accessing }
DelugeOsc1 class >> typeSaw [
	^ TypeSaw ifNil: [ TypeSaw := 'saw' ]
]

{ #category : #accessing }
DelugeOsc1 class >> typeSine [
	^ TypeSine ifNil: [ TypeSine := 'sine' ]
]

{ #category : #accessing }
DelugeOsc1 class >> typeSquare [
	^ TypeSquare ifNil: [ TypeSquare := 'square' ]
]

{ #category : #accessing }
DelugeOsc1 class >> typeTriangle [
	^ TypeTriangle ifNil: [ TypeTriangle := 'triangle' ]
]

{ #category : #accessing }
DelugeOsc1 class >> xmlElementName [
	^ 'osc1'
]

{ #category : #configuring }
DelugeOsc1 >> beTypeAnalogSaw [
	type := self class typeAnalogSaw
]

{ #category : #configuring }
DelugeOsc1 >> beTypeAnalogSquare [
	type := self class typeAnalogSquare
]

{ #category : #configuring }
DelugeOsc1 >> beTypeSample [
	type := self class typeSample
]

{ #category : #configuring }
DelugeOsc1 >> beTypeSaw [
	type := self class typeSaw
]

{ #category : #configuring }
DelugeOsc1 >> beTypeSine [
	type := self class typeSine
]

{ #category : #configuring }
DelugeOsc1 >> beTypeSquare [
	type := self class typeSquare
]

{ #category : #configuring }
DelugeOsc1 >> beTypeTriangle [
	type := self class typeTriangle
]

{ #category : #accessing }
DelugeOsc1 >> cents [
	^ cents
]

{ #category : #accessing }
DelugeOsc1 >> cents: anObject [
	cents := anObject
]

{ #category : #'magritte description' }
DelugeOsc1 >> descriptionCents [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #cents;
		label: 'cents';
		priority: 7;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc1 >> descriptionFileName [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #fileName;
		label: 'fileName';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc1 >> descriptionLoopMode [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #loopMode;
		label: 'loopMode';
		priority: 9;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc1 >> descriptionRetrigPhase [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #retrigPhase;
		label: 'retrigPhase';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc1 >> descriptionReversed [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #reversed;
		label: 'reversed';
		priority: 8;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc1 >> descriptionSampleRanges [
	<magritteDescription>
	^ MAToManyRelationDescription new
		accessor: #sampleRanges;
		label: 'sampleRanges';
		priority: 3;
		classes: { DelugeSampleRange };
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc1 >> descriptionTimeStretchAmount [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #timeStretchAmount;
		label: 'timeStretchAmount';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc1 >> descriptionTimeStretchEnable [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #timeStretchEnable;
		label: 'timeStretchEnable';
		priority: 4;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc1 >> descriptionTranspose [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #transpose;
		label: 'transpose';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc1 >> descriptionType [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #type;
		label: 'type';
		priority: 6;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc1 >> descriptionZone [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #zone;
		label: 'zone';
		priority: 5;
		classes: { DelugeZone };
		beXmlInlineElement;
		yourself
]

{ #category : #accessing }
DelugeOsc1 >> fileName [
	^ fileName
]

{ #category : #accessing }
DelugeOsc1 >> fileName: anObject [
	fileName := anObject
]

{ #category : #accessing }
DelugeOsc1 >> loopMode [
	^ loopMode
]

{ #category : #accessing }
DelugeOsc1 >> loopMode: anObject [
	loopMode := anObject
]

{ #category : #accessing }
DelugeOsc1 >> retrigPhase [
	^ retrigPhase
]

{ #category : #accessing }
DelugeOsc1 >> retrigPhase: anObject [
	retrigPhase := anObject
]

{ #category : #accessing }
DelugeOsc1 >> reversed [
	^ reversed
]

{ #category : #accessing }
DelugeOsc1 >> reversed: anObject [
	reversed := anObject
]

{ #category : #accessing }
DelugeOsc1 >> sampleRanges [
	^ sampleRanges
]

{ #category : #accessing }
DelugeOsc1 >> sampleRanges: anObject [
	sampleRanges := anObject
]

{ #category : #accessing }
DelugeOsc1 >> timeStretchAmount [
	^ timeStretchAmount
]

{ #category : #accessing }
DelugeOsc1 >> timeStretchAmount: anObject [
	timeStretchAmount := anObject
]

{ #category : #accessing }
DelugeOsc1 >> timeStretchEnable [
	^ timeStretchEnable
]

{ #category : #accessing }
DelugeOsc1 >> timeStretchEnable: anObject [
	timeStretchEnable := anObject
]

{ #category : #accessing }
DelugeOsc1 >> transpose [
	^ transpose
]

{ #category : #accessing }
DelugeOsc1 >> transpose: anObject [
	transpose := anObject
]

{ #category : #accessing }
DelugeOsc1 >> type [
	^ type
]

{ #category : #accessing }
DelugeOsc1 >> type: anObject [
	type := anObject
]

{ #category : #accessing }
DelugeOsc1 >> zone [
	^ zone
]

{ #category : #accessing }
DelugeOsc1 >> zone: anObject [
	zone := anObject
]
