Class {
	#name : #DelugeLfo1,
	#superclass : #DelugeObject,
	#instVars : [
		'syncLevel',
		'type'
	],
	#classVars : [
		'TypeSine'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeLfo1 class >> typeSaw [
	^ TypeSaw ifNil: [ TypeSaw := 'saw' ]
]

{ #category : #accessing }
DelugeLfo1 class >> typeSine [
	^ TypeSine ifNil: [ TypeSine := 'sine' ]
]

{ #category : #accessing }
DelugeLfo1 class >> typeSquare [
	^ TypeSquare ifNil: [ TypeSquare := 'square' ]
]

{ #category : #accessing }
DelugeLfo1 class >> typeTriangle [
	^ TypeTriangle ifNil: [ TypeTriangle := 'triangle' ]
]

{ #category : #accessing }
DelugeLfo1 class >> xmlElementName [
	^ 'lfo1'
]

{ #category : #comparing }
DelugeLfo1 >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ syncLevel = anObject syncLevel and: [ type = anObject type ]
]

{ #category : #configuring }
DelugeLfo1 >> beTypeSaw [
	type := self class typeSaw
]

{ #category : #configuring }
DelugeLfo1 >> beTypeSine [
	type := self class typeSine
]

{ #category : #configuring }
DelugeLfo1 >> beTypeSquare [
	type := self class typeSquare
]

{ #category : #configuring }
DelugeLfo1 >> beTypeTriangle [
	type := self class typeTriangle
]

{ #category : #'magritte description' }
DelugeLfo1 >> descriptionSyncLevel [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #syncLevel;
		label: 'syncLevel';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeLfo1 >> descriptionType [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #type;
		label: 'type';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #comparing }
DelugeLfo1 >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ syncLevel hash bitXor: type hash
]

{ #category : #accessing }
DelugeLfo1 >> syncLevel [
	^ syncLevel
]

{ #category : #accessing }
DelugeLfo1 >> syncLevel: anObject [
	syncLevel := anObject
]

{ #category : #accessing }
DelugeLfo1 >> type [
	^ type
]

{ #category : #accessing }
DelugeLfo1 >> type: anObject [
	type := anObject
]
