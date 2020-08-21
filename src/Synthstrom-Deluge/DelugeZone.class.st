Class {
	#name : #DelugeZone,
	#superclass : #DelugeObject,
	#instVars : [
		'endSamplePos',
		'startSamplePos',
		'endLoopPos',
		'endMilliseconds',
		'startMilliseconds',
		'startLoopPos'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeZone class >> xmlElementName [
	^ 'zone'
]

{ #category : #'magritte description' }
DelugeZone >> descriptionEndLoopPos [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #endLoopPos;
		label: 'endLoopPos';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeZone >> descriptionEndMilliseconds [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #endMilliseconds;
		label: 'endMilliseconds';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeZone >> descriptionEndSamplePos [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #endSamplePos;
		label: 'endSamplePos';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeZone >> descriptionStartLoopPos [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #startLoopPos;
		label: 'startLoopPos';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeZone >> descriptionStartMilliseconds [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #startMilliseconds;
		label: 'startMilliseconds';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeZone >> descriptionStartSamplePos [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #startSamplePos;
		label: 'startSamplePos';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #accessing }
DelugeZone >> endLoopPos [
	^ endLoopPos
]

{ #category : #accessing }
DelugeZone >> endLoopPos: anObject [
	endLoopPos := anObject
]

{ #category : #accessing }
DelugeZone >> endMilliseconds [
	^ endMilliseconds
]

{ #category : #accessing }
DelugeZone >> endMilliseconds: anObject [
	endMilliseconds := anObject
]

{ #category : #accessing }
DelugeZone >> endSamplePos [
	^ endSamplePos
]

{ #category : #accessing }
DelugeZone >> endSamplePos: anObject [
	endSamplePos := anObject
]

{ #category : #accessing }
DelugeZone >> startLoopPos [
	^ startLoopPos
]

{ #category : #accessing }
DelugeZone >> startLoopPos: anObject [
	startLoopPos := anObject
]

{ #category : #accessing }
DelugeZone >> startMilliseconds [
	^ startMilliseconds
]

{ #category : #accessing }
DelugeZone >> startMilliseconds: anObject [
	startMilliseconds := anObject
]

{ #category : #accessing }
DelugeZone >> startSamplePos [
	^ startSamplePos
]

{ #category : #accessing }
DelugeZone >> startSamplePos: anObject [
	startSamplePos := anObject
]
