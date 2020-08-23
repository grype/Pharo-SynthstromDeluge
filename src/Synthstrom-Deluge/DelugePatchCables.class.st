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

{ #category : #comparing }
DelugePatchCables >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ patchCable = anObject patchCable
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

{ #category : #comparing }
DelugePatchCables >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ patchCable hash
]

{ #category : #accessing }
DelugePatchCables >> patchCable [
	^ patchCable
]

{ #category : #accessing }
DelugePatchCables >> patchCable: anObject [
	patchCable := anObject
]
