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
		priority: 4;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeEnvelope2 >> descriptionDecay [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #decay;
		label: 'decay';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeEnvelope2 >> descriptionRelease [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #release;
		label: 'release';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeEnvelope2 >> descriptionSustain [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #sustain;
		label: 'sustain';
		priority: 3;
		beXmlElement;
		yourself
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
