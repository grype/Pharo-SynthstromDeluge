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
		'TypeSquare'
	],
	#category : #'Synthstrom-Deluge'
}

{ #category : #accessing }
DelugeOsc2 class >> typeSquare [
	^ TypeSquare ifNil: [ TypeSquare := 'square' ]
]

{ #category : #accessing }
DelugeOsc2 class >> xmlElementName [
	^ 'osc2'
]

{ #category : #configuring }
DelugeOsc2 >> beTypeSquare [
	type := self typeSquare
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
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc2 >> descriptionLoopMode [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #loopMode;
		label: 'loopMode';
		priority: 6;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc2 >> descriptionOscillatorSync [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #oscillatorSync;
		label: 'oscillatorSync';
		priority: 4;
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
		priority: 4;
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
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc2 >> descriptionType [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #type;
		label: 'type';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc2 >> descriptionZone [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #zone;
		label: 'zone';
		priority: 1;
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
