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

{ #category : #accessing }
DelugeLpf >> resonance [
	^ resonance
]

{ #category : #accessing }
DelugeLpf >> resonance: anObject [
	resonance := anObject
]
