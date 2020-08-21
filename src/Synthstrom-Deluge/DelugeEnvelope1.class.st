Class {
	#name : #DelugeEnvelope1,
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
DelugeEnvelope1 class >> xmlElementName [
	^ 'envelope1'
]

{ #category : #accessing }
DelugeEnvelope1 >> attack [
	^ attack
]

{ #category : #accessing }
DelugeEnvelope1 >> attack: anObject [
	attack := anObject
]

{ #category : #accessing }
DelugeEnvelope1 >> decay [
	^ decay
]

{ #category : #accessing }
DelugeEnvelope1 >> decay: anObject [
	decay := anObject
]

{ #category : #'magritte description' }
DelugeEnvelope1 >> descriptionAttack [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #attack;
		label: 'attack';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeEnvelope1 >> descriptionDecay [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #decay;
		label: 'decay';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeEnvelope1 >> descriptionRelease [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #release;
		label: 'release';
		priority: 4;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeEnvelope1 >> descriptionSustain [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #sustain;
		label: 'sustain';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #accessing }
DelugeEnvelope1 >> release [
	^ release
]

{ #category : #accessing }
DelugeEnvelope1 >> release: anObject [
	release := anObject
]

{ #category : #accessing }
DelugeEnvelope1 >> sustain [
	^ sustain
]

{ #category : #accessing }
DelugeEnvelope1 >> sustain: anObject [
	sustain := anObject
]
