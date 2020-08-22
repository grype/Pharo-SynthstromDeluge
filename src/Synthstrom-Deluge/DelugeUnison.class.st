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

{ #category : #'magritte description' }
DelugeUnison >> descriptionDetune [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #detune;
		label: 'detune';
		priority: 1;
		beXmlElement;
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

{ #category : #accessing }
DelugeUnison >> num [
	^ num
]

{ #category : #accessing }
DelugeUnison >> num: anObject [
	num := anObject
]
