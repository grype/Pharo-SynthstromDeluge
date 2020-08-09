Class {
	#name : #DelugePatchCable,
	#superclass : #DelugeObject,
	#instVars : [
		'amount',
		'destination',
		'source',
		'rangeAdjustable'
	],
	#classVars : [
		'DestinationLpfFrequency',
		'DestinationVolume',
		'SourceEnvelope2',
		'SourceNote',
		'SourceVelocity'
	],
	#category : #'Synthstrom-Deluge'
}

{ #category : #accessing }
DelugePatchCable class >> destinationLpfFrequency [
	^ DestinationLpfFrequency ifNil: [ DestinationLpfFrequency := 'lpfFrequency' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationVolume [
	^ DestinationVolume ifNil: [ DestinationVolume := 'volume' ]
]

{ #category : #accessing }
DelugePatchCable class >> sourceEnvelope2 [
	^ SourceEnvelope2 ifNil: [ SourceEnvelope2 := 'envelope2' ]
]

{ #category : #accessing }
DelugePatchCable class >> sourceNote [
	^ SourceNote ifNil: [ SourceNote := 'note' ]
]

{ #category : #accessing }
DelugePatchCable class >> sourceVelocity [
	^ SourceVelocity ifNil: [ SourceVelocity := 'velocity' ]
]

{ #category : #accessing }
DelugePatchCable class >> xmlElementName [
	^ 'patchCable'
]

{ #category : #accessing }
DelugePatchCable >> amount [
	^ amount
]

{ #category : #accessing }
DelugePatchCable >> amount: anObject [
	amount := anObject
]

{ #category : #configuring }
DelugePatchCable >> beDestinationLpfFrequency [
	destination := self destinationLpfFrequency
]

{ #category : #configuring }
DelugePatchCable >> beDestinationVolume [
	destination := self destinationVolume
]

{ #category : #configuring }
DelugePatchCable >> beSourceEnvelope2 [
	source := self sourceEnvelope2
]

{ #category : #configuring }
DelugePatchCable >> beSourceNote [
	source := self sourceNote
]

{ #category : #configuring }
DelugePatchCable >> beSourceVelocity [
	source := self sourceVelocity
]

{ #category : #'magritte description' }
DelugePatchCable >> descriptionAmount [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #amount;
		label: 'amount';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugePatchCable >> descriptionDestination [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #destination;
		label: 'destination';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugePatchCable >> descriptionRangeAdjustable [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #rangeAdjustable;
		label: 'rangeAdjustable';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugePatchCable >> descriptionSource [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #source;
		label: 'source';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #accessing }
DelugePatchCable >> destination [
	^ destination
]

{ #category : #accessing }
DelugePatchCable >> destination: anObject [
	destination := anObject
]

{ #category : #accessing }
DelugePatchCable >> rangeAdjustable [
	^ rangeAdjustable
]

{ #category : #accessing }
DelugePatchCable >> rangeAdjustable: anObject [
	rangeAdjustable := anObject
]

{ #category : #accessing }
DelugePatchCable >> source [
	^ source
]

{ #category : #accessing }
DelugePatchCable >> source: anObject [
	source := anObject
]
