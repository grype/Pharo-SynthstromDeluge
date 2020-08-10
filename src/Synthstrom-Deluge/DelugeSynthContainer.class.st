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
	#category : #'Synthstrom-Deluge'
}

{ #category : #testing }
DelugeSynthContainer class >> canBeRoot [
	^ true
]

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

{ #category : #accessing }
DelugeSynthContainer class >> xmlElementName [
	^ 'synthContainer'
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
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSynthContainer >> descriptionFirmwareVersion [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #firmwareVersion;
		label: 'firmwareVersion';
		priority: 1;
		beXmlElement;
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

{ #category : #accessing }
DelugeSynthContainer >> sound [
	^ sound
]

{ #category : #accessing }
DelugeSynthContainer >> sound: anObject [
	sound := anObject
]
