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
	#category : #'Synthstrom-Deluge'
}

{ #category : #accessing }
DelugeDelay class >> xmlElementName [
	^ 'delay'
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
		yourself
]

{ #category : #'magritte description' }
DelugeDelay >> descriptionFeedback [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #feedback;
		label: 'feedback';
		priority: 2;
		beXmlElement;
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
		yourself
]

{ #category : #'magritte description' }
DelugeDelay >> descriptionRate [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #rate;
		label: 'rate';
		priority: 1;
		beXmlElement;
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