Class {
	#name : #DelugeKitContainer,
	#superclass : #DelugeObject,
	#instVars : [
		'kit'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #testing }
DelugeKitContainer class >> isContainer [
	^ true
]

{ #category : #accessing }
DelugeKitContainer class >> xmlElementName [
	^ 'kitContainer'
]

{ #category : #comparing }
DelugeKitContainer >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ kit = anObject kit
]

{ #category : #'magritte description' }
DelugeKitContainer >> descriptionKit [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #kit;
		label: 'kit';
		priority: 1;
		classes: { DelugeKit };
		beXmlInlineElement;
		yourself
]

{ #category : #comparing }
DelugeKitContainer >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ kit hash
]

{ #category : #accessing }
DelugeKitContainer >> kit [
	^ kit
]

{ #category : #accessing }
DelugeKitContainer >> kit: anObject [
	kit := anObject
]
