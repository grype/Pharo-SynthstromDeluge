Class {
	#name : #DelugeArpeggiator,
	#superclass : #DelugeObject,
	#instVars : [
		'mode',
		'numOctaves',
		'syncLevel'
	],
	#category : #'Synthstrom-Deluge'
}

{ #category : #accessing }
DelugeArpeggiator class >> xmlElementName [
	^ 'arpeggiator'
]

{ #category : #'magritte description' }
DelugeArpeggiator >> descriptionMode [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #mode;
		label: 'mode';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeArpeggiator >> descriptionNumOctaves [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #numOctaves;
		label: 'numOctaves';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeArpeggiator >> descriptionSyncLevel [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #syncLevel;
		label: 'syncLevel';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #accessing }
DelugeArpeggiator >> mode [
	^ mode
]

{ #category : #accessing }
DelugeArpeggiator >> mode: anObject [
	mode := anObject
]

{ #category : #accessing }
DelugeArpeggiator >> numOctaves [
	^ numOctaves
]

{ #category : #accessing }
DelugeArpeggiator >> numOctaves: anObject [
	numOctaves := anObject
]

{ #category : #accessing }
DelugeArpeggiator >> syncLevel [
	^ syncLevel
]

{ #category : #accessing }
DelugeArpeggiator >> syncLevel: anObject [
	syncLevel := anObject
]
