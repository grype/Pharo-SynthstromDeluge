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
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeSampleRange class >> xmlElementName [
	^ 'sampleRange'
]

{ #category : #comparing }
DelugeSampleRange >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ cents = anObject cents and: [ 
		  fileName = anObject fileName and: [ 
			  rangeTopNote = anObject rangeTopNote and: [ 
				  transpose = anObject transpose and: [ zone = anObject zone ] ] ] ]
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
		priority: 3;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeSampleRange >> descriptionFileName [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #fileName;
		label: 'fileName';
		priority: 4;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeSampleRange >> descriptionRangeTopNote [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #rangeTopNote;
		label: 'rangeTopNote';
		priority: 2;
		beXmlElement;
		beXmlAttribute;
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
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeSampleRange >> descriptionZone [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #zone;
		label: 'zone';
		priority: 5;
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

{ #category : #comparing }
DelugeSampleRange >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ cents hash bitXor: (fileName hash bitXor:
			   (rangeTopNote hash bitXor: (transpose hash bitXor: zone hash)))
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
