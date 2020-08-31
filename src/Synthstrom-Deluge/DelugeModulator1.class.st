Class {
	#name : #DelugeModulator1,
	#superclass : #DelugeObject,
	#instVars : [
		'cents',
		'retrigPhase',
		'transpose'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeModulator1 class >> xmlElementName [
	^ 'modulator1'
]

{ #category : #comparing }
DelugeModulator1 >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ cents = anObject cents and: [ 
		  retrigPhase = anObject retrigPhase and: [ 
			  transpose = anObject transpose ] ]
]

{ #category : #accessing }
DelugeModulator1 >> cents [
	^ cents
]

{ #category : #accessing }
DelugeModulator1 >> cents: anObject [
	cents := anObject
]

{ #category : #'magritte description' }
DelugeModulator1 >> descriptionCents [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #cents;
		label: 'cents';
		priority: 1;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeModulator1 >> descriptionRetrigPhase [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #retrigPhase;
		label: 'retrigPhase';
		priority: 3;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeModulator1 >> descriptionTranspose [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #transpose;
		label: 'transpose';
		priority: 2;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #comparing }
DelugeModulator1 >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ cents hash bitXor: (retrigPhase hash bitXor: transpose hash)
]

{ #category : #accessing }
DelugeModulator1 >> retrigPhase [
	^ retrigPhase
]

{ #category : #accessing }
DelugeModulator1 >> retrigPhase: anObject [
	retrigPhase := anObject
]

{ #category : #accessing }
DelugeModulator1 >> transpose [
	^ transpose
]

{ #category : #accessing }
DelugeModulator1 >> transpose: anObject [
	transpose := anObject
]
