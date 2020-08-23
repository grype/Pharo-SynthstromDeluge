Class {
	#name : #DelugeModulator2,
	#superclass : #DelugeObject,
	#instVars : [
		'cents',
		'retrigPhase',
		'toModulator1',
		'transpose'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeModulator2 class >> xmlElementName [
	^ 'modulator2'
]

{ #category : #comparing }
DelugeModulator2 >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ cents = anObject cents and: [ 
		  retrigPhase = anObject retrigPhase and: [ 
			  toModulator1 = anObject toModulator1 and: [ 
				  transpose = anObject transpose ] ] ]
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
		priority: 4;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeModulator2 >> descriptionRetrigPhase [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #retrigPhase;
		label: 'retrigPhase';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeModulator2 >> descriptionToModulator1 [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #toModulator1;
		label: 'toModulator1';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeModulator2 >> descriptionTranspose [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #transpose;
		label: 'transpose';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #comparing }
DelugeModulator2 >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ cents hash bitXor:
		  (retrigPhase hash bitXor:
			   (toModulator1 hash bitXor: transpose hash))
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
