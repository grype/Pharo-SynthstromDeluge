Class {
	#name : #DelugeLfo2,
	#superclass : #DelugeObject,
	#instVars : [
		'type'
	],
	#classVars : [
		'TypeSine'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeLfo2 class >> typeSaw [
	^ TypeSaw ifNil: [ TypeSaw := 'saw' ]
]

{ #category : #accessing }
DelugeLfo2 class >> typeSine [
	^ TypeSine ifNil: [ TypeSine := 'sine' ]
]

{ #category : #accessing }
DelugeLfo2 class >> typeSquare [
	^ TypeSquare ifNil: [ TypeSquare := 'square' ]
]

{ #category : #accessing }
DelugeLfo2 class >> typeTriangle [
	^ TypeTriangle ifNil: [ TypeTriangle := 'triangle' ]
]

{ #category : #accessing }
DelugeLfo2 class >> xmlElementName [
	^ 'lfo2'
]

{ #category : #comparing }
DelugeLfo2 >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ type = anObject type
]

{ #category : #configuring }
DelugeLfo2 >> beTypeSaw [
	type := self class typeSaw
]

{ #category : #configuring }
DelugeLfo2 >> beTypeSine [
	type := self class typeSine
]

{ #category : #configuring }
DelugeLfo2 >> beTypeSquare [
	type := self class typeSquare
]

{ #category : #configuring }
DelugeLfo2 >> beTypeTriangle [
	type := self class typeTriangle
]

{ #category : #'magritte description' }
DelugeLfo2 >> descriptionType [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #type;
		label: 'type';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #comparing }
DelugeLfo2 >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ type hash
]

{ #category : #accessing }
DelugeLfo2 >> type [
	^ type
]

{ #category : #accessing }
DelugeLfo2 >> type: anObject [
	type := anObject
]
