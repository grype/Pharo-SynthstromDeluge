Class {
	#name : #DelugeLfo1,
	#superclass : #DelugeObject,
	#instVars : [
		'syncLevel',
		'type'
	],
	#category : #'Synthstrom-Deluge'
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
