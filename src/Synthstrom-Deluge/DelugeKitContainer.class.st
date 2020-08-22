Class {
	#name : #DelugeKitContainer,
	#superclass : #DelugeObject,
	#instVars : [
		'kit'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeKitContainer class >> xmlElementName [
	^ 'kitContainer'
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

{ #category : #accessing }
DelugeKitContainer >> kit [
	^ kit
]

{ #category : #accessing }
DelugeKitContainer >> kit: anObject [
	kit := anObject
]
