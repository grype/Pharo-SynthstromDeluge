Class {
	#name : #DelugeEqualizer,
	#superclass : #DelugeObject,
	#instVars : [
		'bass',
		'bassFrequency',
		'treble',
		'trebleFrequency'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeEqualizer class >> xmlElementName [
	^ 'equalizer'
]

{ #category : #comparing }
DelugeEqualizer >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ bass = anObject bass and: [ 
		  bassFrequency = anObject bassFrequency and: [ 
			  treble = anObject treble and: [ 
				  trebleFrequency = anObject trebleFrequency ] ] ]
]

{ #category : #accessing }
DelugeEqualizer >> bass [
	^ bass
]

{ #category : #accessing }
DelugeEqualizer >> bass: anObject [
	bass := anObject
]

{ #category : #accessing }
DelugeEqualizer >> bassFrequency [
	^ bassFrequency
]

{ #category : #accessing }
DelugeEqualizer >> bassFrequency: anObject [
	bassFrequency := anObject
]

{ #category : #'magritte description' }
DelugeEqualizer >> descriptionBass [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #bass;
		label: 'bass';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeEqualizer >> descriptionBassFrequency [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #bassFrequency;
		label: 'bassFrequency';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeEqualizer >> descriptionTreble [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #treble;
		label: 'treble';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeEqualizer >> descriptionTrebleFrequency [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #trebleFrequency;
		label: 'trebleFrequency';
		priority: 4;
		beXmlElement;
		yourself
]

{ #category : #comparing }
DelugeEqualizer >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ bass hash bitXor:
		  (bassFrequency hash bitXor:
			   (treble hash bitXor: trebleFrequency hash))
]

{ #category : #accessing }
DelugeEqualizer >> treble [
	^ treble
]

{ #category : #accessing }
DelugeEqualizer >> treble: anObject [
	treble := anObject
]

{ #category : #accessing }
DelugeEqualizer >> trebleFrequency [
	^ trebleFrequency
]

{ #category : #accessing }
DelugeEqualizer >> trebleFrequency: anObject [
	trebleFrequency := anObject
]
