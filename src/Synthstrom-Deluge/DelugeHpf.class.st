Class {
	#name : #DelugeHpf,
	#superclass : #DelugeObject,
	#instVars : [
		'frequency',
		'resonance'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeHpf class >> xmlElementName [
	^ 'hpf'
]

{ #category : #comparing }
DelugeHpf >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ frequency = anObject frequency and: [ 
		  resonance = anObject resonance ]
]

{ #category : #'magritte description' }
DelugeHpf >> descriptionFrequency [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #frequency;
		label: 'frequency';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeHpf >> descriptionResonance [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #resonance;
		label: 'resonance';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #accessing }
DelugeHpf >> frequency [
	^ frequency
]

{ #category : #accessing }
DelugeHpf >> frequency: anObject [
	frequency := anObject
]

{ #category : #comparing }
DelugeHpf >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ frequency hash bitXor: resonance hash
]

{ #category : #accessing }
DelugeHpf >> resonance [
	^ resonance
]

{ #category : #accessing }
DelugeHpf >> resonance: anObject [
	resonance := anObject
]
