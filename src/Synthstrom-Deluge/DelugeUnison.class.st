Class {
	#name : #DelugeUnison,
	#superclass : #DelugeObject,
	#instVars : [
		'detune',
		'num'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeUnison class >> xmlElementName [
	^ 'unison'
]

{ #category : #comparing }
DelugeUnison >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ detune = anObject detune and: [ num = anObject num ]
]

{ #category : #'magritte description' }
DelugeUnison >> descriptionDetune [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #detune;
		label: 'detune';
		priority: 1;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeUnison >> descriptionNum [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #num;
		label: 'num';
		priority: 2;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #accessing }
DelugeUnison >> detune [
	^ detune
]

{ #category : #accessing }
DelugeUnison >> detune: anObject [
	detune := anObject
]

{ #category : #comparing }
DelugeUnison >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ detune hash bitXor: num hash
]

{ #category : #accessing }
DelugeUnison >> num [
	^ num
]

{ #category : #accessing }
DelugeUnison >> num: anObject [
	num := anObject
]
