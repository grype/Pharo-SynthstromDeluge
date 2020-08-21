Class {
	#name : #DelugePatchCables,
	#superclass : #DelugeObject,
	#instVars : [
		'patchCable'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugePatchCables class >> xmlElementName [
	^ 'patchCables'
]

{ #category : #'magritte description' }
DelugePatchCables >> descriptionPatchCable [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #patchCable;
		label: 'patchCable';
		priority: 1;
		classes: { DelugePatchCable };
		beXmlInlineElement;
		yourself
]

{ #category : #accessing }
DelugePatchCables >> patchCable [
	^ patchCable
]

{ #category : #accessing }
DelugePatchCables >> patchCable: anObject [
	patchCable := anObject
]
