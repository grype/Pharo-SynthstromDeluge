Class {
	#name : #DelugeModKnob,
	#superclass : #DelugeObject,
	#instVars : [
		'controlsParam',
		'patchAmountFromSource'
	],
	#classVars : [
		'PatchAmountFromSourceCompressor',
		'PatchAmountFromSourceLfo1'
	],
	#category : #'Synthstrom-Deluge'
}

{ #category : #accessing }
DelugeModKnob class >> patchAmountFromSourceCompressor [
	^ PatchAmountFromSourceCompressor ifNil: [ PatchAmountFromSourceCompressor := 'compressor' ]
]

{ #category : #accessing }
DelugeModKnob class >> patchAmountFromSourceLfo1 [
	^ PatchAmountFromSourceLfo1 ifNil: [ PatchAmountFromSourceLfo1 := 'lfo1' ]
]

{ #category : #accessing }
DelugeModKnob class >> xmlElementName [
	^ 'modKnob'
]

{ #category : #configuring }
DelugeModKnob >> bePatchAmountFromSourceCompressor [
	patchAmountFromSource := self patchAmountFromSourceCompressor
]

{ #category : #configuring }
DelugeModKnob >> bePatchAmountFromSourceLfo1 [
	patchAmountFromSource := self patchAmountFromSourceLfo1
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
