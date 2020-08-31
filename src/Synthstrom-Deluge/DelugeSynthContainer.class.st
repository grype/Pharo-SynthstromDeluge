Class {
	#name : #DelugeSynthContainer,
	#superclass : #DelugeObject,
	#instVars : [
		'earliestCompatibleFirmware',
		'firmwareVersion',
		'sound'
	],
	#classVars : [
		'EarliestCompatibleFirmware200beta',
		'EarliestCompatibleFirmware210',
		'FirmwareVersion200beta',
		'FirmwareVersion210'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeSynthContainer class >> earliestCompatibleFirmware200beta [
	^ EarliestCompatibleFirmware200beta ifNil: [ EarliestCompatibleFirmware200beta := '2.0.0-beta' ]
]

{ #category : #accessing }
DelugeSynthContainer class >> earliestCompatibleFirmware210 [
	^ EarliestCompatibleFirmware210 ifNil: [ EarliestCompatibleFirmware210 := '2.1.0' ]
]

{ #category : #accessing }
DelugeSynthContainer class >> firmwareVersion200beta [
	^ FirmwareVersion200beta ifNil: [ FirmwareVersion200beta := '2.0.0-beta' ]
]

{ #category : #accessing }
DelugeSynthContainer class >> firmwareVersion210 [
	^ FirmwareVersion210 ifNil: [ FirmwareVersion210 := '2.1.0' ]
]

{ #category : #testing }
DelugeSynthContainer class >> isContainer [
	^ true
]

{ #category : #accessing }
DelugeSynthContainer class >> xmlElementName [
	^ 'synthContainer'
]

{ #category : #comparing }
DelugeSynthContainer >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ earliestCompatibleFirmware = anObject earliestCompatibleFirmware 
		  and: [ 
			  firmwareVersion = anObject firmwareVersion and: [ 
				  sound = anObject sound ] ]
]

{ #category : #configuring }
DelugeSynthContainer >> beEarliestCompatibleFirmware200beta [
	earliestCompatibleFirmware := self class earliestCompatibleFirmware200beta
]

{ #category : #configuring }
DelugeSynthContainer >> beEarliestCompatibleFirmware210 [
	earliestCompatibleFirmware := self class earliestCompatibleFirmware210
]

{ #category : #configuring }
DelugeSynthContainer >> beFirmwareVersion200beta [
	firmwareVersion := self class firmwareVersion200beta
]

{ #category : #configuring }
DelugeSynthContainer >> beFirmwareVersion210 [
	firmwareVersion := self class firmwareVersion210
]

{ #category : #'magritte description' }
DelugeSynthContainer >> descriptionEarliestCompatibleFirmware [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #earliestCompatibleFirmware;
		label: 'earliestCompatibleFirmware';
		priority: 1;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeSynthContainer >> descriptionFirmwareVersion [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #firmwareVersion;
		label: 'firmwareVersion';
		priority: 3;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeSynthContainer >> descriptionSound [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #sound;
		label: 'sound';
		priority: 2;
		classes: { DelugeSound };
		beXmlInlineElement;
		yourself
]

{ #category : #accessing }
DelugeSynthContainer >> earliestCompatibleFirmware [
	^ earliestCompatibleFirmware
]

{ #category : #accessing }
DelugeSynthContainer >> earliestCompatibleFirmware: anObject [
	earliestCompatibleFirmware := anObject
]

{ #category : #accessing }
DelugeSynthContainer >> firmwareVersion [
	^ firmwareVersion
]

{ #category : #accessing }
DelugeSynthContainer >> firmwareVersion: anObject [
	firmwareVersion := anObject
]

{ #category : #comparing }
DelugeSynthContainer >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ earliestCompatibleFirmware hash bitXor:
		  (firmwareVersion hash bitXor: sound hash)
]

{ #category : #accessing }
DelugeSynthContainer >> sound [
	^ sound
]

{ #category : #accessing }
DelugeSynthContainer >> sound: anObject [
	sound := anObject
]
