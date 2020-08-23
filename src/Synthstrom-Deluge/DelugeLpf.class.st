Class {
	#name : #DelugeLpf,
	#superclass : #DelugeObject,
	#instVars : [
		'frequency',
		'resonance'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeLpf class >> xmlElementName [
	^ 'lpf'
]

{ #category : #comparing }
DelugeLpf >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ frequency = anObject frequency and: [ 
		  resonance = anObject resonance ]
]

{ #category : #'magritte description' }
DelugeLpf >> descriptionFrequency [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #frequency;
		label: 'frequency';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeLpf >> descriptionResonance [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #resonance;
		label: 'resonance';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #accessing }
DelugeLpf >> frequency [
	^ frequency
]

{ #category : #accessing }
DelugeLpf >> frequency: anObject [
	frequency := anObject
]

{ #category : #comparing }
DelugeLpf >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ frequency hash bitXor: resonance hash
]

{ #category : #accessing }
DelugeLpf >> resonance [
	^ resonance
]

{ #category : #accessing }
DelugeLpf >> resonance: anObject [
	resonance := anObject
]
