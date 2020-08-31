Class {
	#name : #DelugeZone,
	#superclass : #DelugeObject,
	#instVars : [
		'endMilliseconds',
		'startMilliseconds',
		'endLoopPos',
		'endSamplePos',
		'startLoopPos',
		'startSamplePos'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeZone class >> xmlElementName [
	^ 'zone'
]

{ #category : #comparing }
DelugeZone >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ endLoopPos = anObject endLoopPos and: [ 
		  endMilliseconds = anObject endMilliseconds and: [ 
			  endSamplePos = anObject endSamplePos and: [ 
				  startLoopPos = anObject startLoopPos and: [ 
					  startMilliseconds = anObject startMilliseconds and: [ 
						  startSamplePos = anObject startSamplePos ] ] ] ] ]
]

{ #category : #'magritte description' }
DelugeZone >> descriptionEndLoopPos [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #endLoopPos;
		label: 'endLoopPos';
		priority: 2;
		beXmlElement;
		beXmlAttribute;
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
		beXmlAttribute;
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
		beXmlAttribute;
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
		beXmlAttribute;
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
		beXmlAttribute;
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
		beXmlAttribute;
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

{ #category : #comparing }
DelugeZone >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ endLoopPos hash bitXor: (endMilliseconds hash bitXor:
			   (endSamplePos hash bitXor: (startLoopPos hash bitXor:
					     (startMilliseconds hash bitXor: startSamplePos hash))))
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
