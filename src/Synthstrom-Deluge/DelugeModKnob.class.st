Class {
	#name : #DelugeModKnob,
	#superclass : #DelugeObject,
	#instVars : [
		'controlsParam',
		'patchAmountFromSource'
	],
	#category : #'Synthstrom-Deluge'
}

{ #category : #accessing }
DelugeModKnob class >> xmlElementName [
	^ 'modKnob'
]

{ #category : #accessing }
DelugeModKnob >> controlsParam [
	^ controlsParam
]

{ #category : #accessing }
DelugeModKnob >> controlsParam: anObject [
	controlsParam := anObject
]

{ #category : #'magritte description' }
DelugeModKnob >> descriptionControlsParam [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #controlsParam;
		label: 'controlsParam';
		priority: 1;
		classes: { DelugeControlsParam };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeModKnob >> descriptionPatchAmountFromSource [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #patchAmountFromSource;
		label: 'patchAmountFromSource';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #accessing }
DelugeModKnob >> patchAmountFromSource [
	^ patchAmountFromSource
]

{ #category : #accessing }
DelugeModKnob >> patchAmountFromSource: anObject [
	patchAmountFromSource := anObject
]
