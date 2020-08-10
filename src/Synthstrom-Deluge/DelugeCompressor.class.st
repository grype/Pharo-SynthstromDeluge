Class {
	#name : #DelugeCompressor,
	#superclass : #DelugeObject,
	#instVars : [
		'attack',
		'release',
		'syncLevel'
	],
	#category : #'Synthstrom-Deluge'
}

{ #category : #accessing }
DelugeCompressor class >> xmlElementName [
	^ 'compressor'
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
		priority: 2;
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
		priority: 3;
		beXmlElement;
		yourself
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
