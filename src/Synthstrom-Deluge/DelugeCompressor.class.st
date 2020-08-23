Class {
	#name : #DelugeCompressor,
	#superclass : #DelugeObject,
	#instVars : [
		'attack',
		'release',
		'syncLevel'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeCompressor class >> xmlElementName [
	^ 'compressor'
]

{ #category : #comparing }
DelugeCompressor >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ syncLevel = anObject syncLevel and: [ 
		  release = anObject release and: [ attack = anObject attack ] ]
]

{ #category : #accessing }
DelugeCompressor >> attack [
	^ attack
]

{ #category : #accessing }
DelugeCompressor >> attack: anObject [
	attack := anObject
]

{ #category : #'magritte description' }
DelugeCompressor >> descriptionAttack [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #attack;
		label: 'attack';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeCompressor >> descriptionRelease [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #release;
		label: 'release';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeCompressor >> descriptionSyncLevel [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #syncLevel;
		label: 'syncLevel';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #comparing }
DelugeCompressor >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ syncLevel hash bitXor: (release hash bitXor: attack hash)
]

{ #category : #accessing }
DelugeCompressor >> release [
	^ release
]

{ #category : #accessing }
DelugeCompressor >> release: anObject [
	release := anObject
]

{ #category : #accessing }
DelugeCompressor >> syncLevel [
	^ syncLevel
]

{ #category : #accessing }
DelugeCompressor >> syncLevel: anObject [
	syncLevel := anObject
]
