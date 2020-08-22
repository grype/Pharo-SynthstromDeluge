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

{ #category : #accessing }
DelugeHpf >> resonance [
	^ resonance
]

{ #category : #accessing }
DelugeHpf >> resonance: anObject [
	resonance := anObject
]
