Class {
	#name : #DelugeEnvelope2,
	#superclass : #DelugeObject,
	#instVars : [
		'attack',
		'decay',
		'release',
		'sustain'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeEnvelope2 class >> xmlElementName [
	^ 'envelope2'
]

{ #category : #comparing }
DelugeEnvelope2 >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ attack = anObject attack and: [ 
		  decay = anObject decay and: [ 
			  release = anObject release and: [ sustain = anObject sustain ] ] ]
]

{ #category : #accessing }
DelugeEnvelope2 >> attack [
	^ attack
]

{ #category : #accessing }
DelugeEnvelope2 >> attack: anObject [
	attack := anObject
]

{ #category : #accessing }
DelugeEnvelope2 >> decay [
	^ decay
]

{ #category : #accessing }
DelugeEnvelope2 >> decay: anObject [
	decay := anObject
]

{ #category : #'magritte description' }
DelugeEnvelope2 >> descriptionAttack [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #attack;
		label: 'attack';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeEnvelope2 >> descriptionDecay [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #decay;
		label: 'decay';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeEnvelope2 >> descriptionRelease [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #release;
		label: 'release';
		priority: 4;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeEnvelope2 >> descriptionSustain [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #sustain;
		label: 'sustain';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #comparing }
DelugeEnvelope2 >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ attack hash bitXor:
		  (decay hash bitXor: (release hash bitXor: sustain hash))
]

{ #category : #accessing }
DelugeEnvelope2 >> release [
	^ release
]

{ #category : #accessing }
DelugeEnvelope2 >> release: anObject [
	release := anObject
]

{ #category : #accessing }
DelugeEnvelope2 >> sustain [
	^ sustain
]

{ #category : #accessing }
DelugeEnvelope2 >> sustain: anObject [
	sustain := anObject
]
