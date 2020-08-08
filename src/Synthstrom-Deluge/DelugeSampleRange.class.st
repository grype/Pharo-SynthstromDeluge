Class {
	#name : #DelugeSampleRange,
	#superclass : #DelugeObject,
	#instVars : [
		'cents',
		'fileName',
		'rangeTopNote',
		'transpose',
		'zone'
	],
	#category : #'Synthstrom-Deluge'
}

{ #category : #accessing }
DelugeSampleRange class >> xmlElementName [
	^ 'sampleRange'
]

{ #category : #accessing }
DelugeSampleRange >> cents [
	^ cents
]

{ #category : #accessing }
DelugeSampleRange >> cents: anObject [
	cents := anObject
]

{ #category : #'magritte description' }
DelugeSampleRange >> descriptionCents [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #cents;
		label: 'cents';
		priority: 5;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSampleRange >> descriptionFileName [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #fileName;
		label: 'fileName';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSampleRange >> descriptionRangeTopNote [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #rangeTopNote;
		label: 'rangeTopNote';
		priority: 4;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSampleRange >> descriptionTranspose [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #transpose;
		label: 'transpose';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSampleRange >> descriptionZone [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #zone;
		label: 'zone';
		priority: 3;
		classes: { DelugeZone };
		beXmlInlineElement;
		yourself
]

{ #category : #accessing }
DelugeSampleRange >> fileName [
	^ fileName
]

{ #category : #accessing }
DelugeSampleRange >> fileName: anObject [
	fileName := anObject
]

{ #category : #accessing }
DelugeSampleRange >> rangeTopNote [
	^ rangeTopNote
]

{ #category : #accessing }
DelugeSampleRange >> rangeTopNote: anObject [
	rangeTopNote := anObject
]

{ #category : #accessing }
DelugeSampleRange >> transpose [
	^ transpose
]

{ #category : #accessing }
DelugeSampleRange >> transpose: anObject [
	transpose := anObject
]

{ #category : #accessing }
DelugeSampleRange >> zone [
	^ zone
]

{ #category : #accessing }
DelugeSampleRange >> zone: anObject [
	zone := anObject
]
