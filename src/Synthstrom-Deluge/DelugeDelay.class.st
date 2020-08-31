Class {
	#name : #DelugeDelay,
	#superclass : #DelugeObject,
	#instVars : [
		'analog',
		'feedback',
		'pingPong',
		'rate',
		'syncLevel'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeDelay class >> xmlElementName [
	^ 'delay'
]

{ #category : #comparing }
DelugeDelay >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ analog = anObject analog and: [ 
		  feedback = anObject feedback and: [ 
			  pingPong = anObject pingPong and: [ 
				  rate = anObject rate and: [ syncLevel = anObject syncLevel ] ] ] ]
]

{ #category : #accessing }
DelugeDelay >> analog [
	^ analog
]

{ #category : #accessing }
DelugeDelay >> analog: anObject [
	analog := anObject
]

{ #category : #'magritte description' }
DelugeDelay >> descriptionAnalog [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #analog;
		label: 'analog';
		priority: 2;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeDelay >> descriptionFeedback [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #feedback;
		label: 'feedback';
		priority: 1;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeDelay >> descriptionPingPong [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #pingPong;
		label: 'pingPong';
		priority: 1;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeDelay >> descriptionRate [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #rate;
		label: 'rate';
		priority: 2;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeDelay >> descriptionSyncLevel [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #syncLevel;
		label: 'syncLevel';
		priority: 3;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #accessing }
DelugeDelay >> feedback [
	^ feedback
]

{ #category : #accessing }
DelugeDelay >> feedback: anObject [
	feedback := anObject
]

{ #category : #comparing }
DelugeDelay >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ analog hash bitXor: (feedback hash bitXor:
			   (pingPong hash bitXor: (rate hash bitXor: syncLevel hash)))
]

{ #category : #accessing }
DelugeDelay >> pingPong [
	^ pingPong
]

{ #category : #accessing }
DelugeDelay >> pingPong: anObject [
	pingPong := anObject
]

{ #category : #accessing }
DelugeDelay >> rate [
	^ rate
]

{ #category : #accessing }
DelugeDelay >> rate: anObject [
	rate := anObject
]

{ #category : #accessing }
DelugeDelay >> syncLevel [
	^ syncLevel
]

{ #category : #accessing }
DelugeDelay >> syncLevel: anObject [
	syncLevel := anObject
]
