Class {
	#name : #DelugeModulator2,
	#superclass : #DelugeObject,
	#instVars : [
		'cents',
		'retrigPhase',
		'toModulator1',
		'transpose'
	],
	#category : #'Synthstrom-Deluge'
}

{ #category : #accessing }
DelugeModulator2 class >> xmlElementName [
	^ 'modulator2'
]

{ #category : #accessing }
DelugeModulator2 >> cents [
	^ cents
]

{ #category : #accessing }
DelugeModulator2 >> cents: anObject [
	cents := anObject
]

{ #category : #'magritte description' }
DelugeModulator2 >> descriptionCents [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #cents;
		label: 'cents';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeModulator2 >> descriptionRetrigPhase [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #retrigPhase;
		label: 'retrigPhase';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeModulator2 >> descriptionToModulator1 [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #toModulator1;
		label: 'toModulator1';
		priority: 4;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeModulator2 >> descriptionTranspose [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #transpose;
		label: 'transpose';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #accessing }
DelugeModulator2 >> retrigPhase [
	^ retrigPhase
]

{ #category : #accessing }
DelugeModulator2 >> retrigPhase: anObject [
	retrigPhase := anObject
]

{ #category : #accessing }
DelugeModulator2 >> toModulator1 [
	^ toModulator1
]

{ #category : #accessing }
DelugeModulator2 >> toModulator1: anObject [
	toModulator1 := anObject
]

{ #category : #accessing }
DelugeModulator2 >> transpose [
	^ transpose
]

{ #category : #accessing }
DelugeModulator2 >> transpose: anObject [
	transpose := anObject
]
