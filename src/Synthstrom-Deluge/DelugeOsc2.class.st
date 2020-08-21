Class {
	#name : #DelugeOsc2,
	#superclass : #DelugeObject,
	#instVars : [
		'cents',
		'retrigPhase',
		'transpose',
		'type',
		'loopMode',
		'oscillatorSync',
		'reversed',
		'sampleRanges',
		'timeStretchAmount',
		'timeStretchEnable',
		'zone'
	],
	#classVars : [
		'TypeAnalogSaw',
		'TypeAnalogSquare',
		'TypeSample',
		'TypeSaw',
		'TypeSine',
		'TypeSquare',
		'TypeTriangle'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeOsc2 class >> typeAnalogSaw [
	^ TypeAnalogSaw ifNil: [ TypeAnalogSaw := 'analogSaw' ]
]

{ #category : #accessing }
DelugeOsc2 class >> typeAnalogSquare [
	^ TypeAnalogSquare ifNil: [ TypeAnalogSquare := 'analogSquare' ]
]

{ #category : #accessing }
DelugeOsc2 class >> typeSample [
	^ TypeSample ifNil: [ TypeSample := 'sample' ]
]

{ #category : #accessing }
DelugeOsc2 class >> typeSaw [
	^ TypeSaw ifNil: [ TypeSaw := 'saw' ]
]

{ #category : #accessing }
DelugeOsc2 class >> typeSine [
	^ TypeSine ifNil: [ TypeSine := 'sine' ]
]

{ #category : #accessing }
DelugeOsc2 class >> typeSquare [
	^ TypeSquare ifNil: [ TypeSquare := 'square' ]
]

{ #category : #accessing }
DelugeOsc2 class >> typeTriangle [
	^ TypeTriangle ifNil: [ TypeTriangle := 'triangle' ]
]

{ #category : #accessing }
DelugeOsc2 class >> xmlElementName [
	^ 'osc2'
]

{ #category : #configuring }
DelugeOsc2 >> beTypeAnalogSaw [
	type := self class typeAnalogSaw
]

{ #category : #configuring }
DelugeOsc2 >> beTypeAnalogSquare [
	type := self class typeAnalogSquare
]

{ #category : #configuring }
DelugeOsc2 >> beTypeSample [
	type := self class typeSample
]

{ #category : #configuring }
DelugeOsc2 >> beTypeSaw [
	type := self class typeSaw
]

{ #category : #configuring }
DelugeOsc2 >> beTypeSine [
	type := self class typeSine
]

{ #category : #configuring }
DelugeOsc2 >> beTypeSquare [
	type := self class typeSquare
]

{ #category : #configuring }
DelugeOsc2 >> beTypeTriangle [
	type := self class typeTriangle
]

{ #category : #accessing }
DelugeOsc2 >> cents [
	^ cents
]

{ #category : #accessing }
DelugeOsc2 >> cents: anObject [
	cents := anObject
]

{ #category : #'magritte description' }
DelugeOsc2 >> descriptionCents [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #cents;
		label: 'cents';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc2 >> descriptionLoopMode [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #loopMode;
		label: 'loopMode';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc2 >> descriptionOscillatorSync [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #oscillatorSync;
		label: 'oscillatorSync';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc2 >> descriptionRetrigPhase [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #retrigPhase;
		label: 'retrigPhase';
		priority: 4;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc2 >> descriptionReversed [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #reversed;
		label: 'reversed';
		priority: 6;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc2 >> descriptionSampleRanges [
	<magritteDescription>
	^ MAToManyRelationDescription new
		accessor: #sampleRanges;
		label: 'sampleRanges';
		priority: 5;
		classes: { DelugeSampleRange };
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc2 >> descriptionTimeStretchAmount [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #timeStretchAmount;
		label: 'timeStretchAmount';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc2 >> descriptionTimeStretchEnable [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #timeStretchEnable;
		label: 'timeStretchEnable';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc2 >> descriptionTranspose [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #transpose;
		label: 'transpose';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc2 >> descriptionType [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #type;
		label: 'type';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc2 >> descriptionZone [
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
DelugeOsc2 >> loopMode [
	^ loopMode
]

{ #category : #accessing }
DelugeOsc2 >> loopMode: anObject [
	loopMode := anObject
]

{ #category : #accessing }
DelugeOsc2 >> oscillatorSync [
	^ oscillatorSync
]

{ #category : #accessing }
DelugeOsc2 >> oscillatorSync: anObject [
	oscillatorSync := anObject
]

{ #category : #accessing }
DelugeOsc2 >> retrigPhase [
	^ retrigPhase
]

{ #category : #accessing }
DelugeOsc2 >> retrigPhase: anObject [
	retrigPhase := anObject
]

{ #category : #accessing }
DelugeOsc2 >> reversed [
	^ reversed
]

{ #category : #accessing }
DelugeOsc2 >> reversed: anObject [
	reversed := anObject
]

{ #category : #accessing }
DelugeOsc2 >> sampleRanges [
	^ sampleRanges
]

{ #category : #accessing }
DelugeOsc2 >> sampleRanges: anObject [
	sampleRanges := anObject
]

{ #category : #accessing }
DelugeOsc2 >> timeStretchAmount [
	^ timeStretchAmount
]

{ #category : #accessing }
DelugeOsc2 >> timeStretchAmount: anObject [
	timeStretchAmount := anObject
]

{ #category : #accessing }
DelugeOsc2 >> timeStretchEnable [
	^ timeStretchEnable
]

{ #category : #accessing }
DelugeOsc2 >> timeStretchEnable: anObject [
	timeStretchEnable := anObject
]

{ #category : #accessing }
DelugeOsc2 >> transpose [
	^ transpose
]

{ #category : #accessing }
DelugeOsc2 >> transpose: anObject [
	transpose := anObject
]

{ #category : #accessing }
DelugeOsc2 >> type [
	^ type
]

{ #category : #accessing }
DelugeOsc2 >> type: anObject [
	type := anObject
]

{ #category : #accessing }
DelugeOsc2 >> zone [
	^ zone
]

{ #category : #accessing }
DelugeOsc2 >> zone: anObject [
	zone := anObject
]
