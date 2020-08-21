Class {
	#name : #DelugeSongContainer,
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
DelugeSongContainer class >> earliestCompatibleFirmware200beta [
	^ EarliestCompatibleFirmware200beta ifNil: [ EarliestCompatibleFirmware200beta := '2.0.0-beta' ]
]

{ #category : #accessing }
DelugeSongContainer class >> earliestCompatibleFirmware210 [
	^ EarliestCompatibleFirmware210 ifNil: [ EarliestCompatibleFirmware210 := '2.1.0' ]
]

{ #category : #accessing }
DelugeSongContainer class >> firmwareVersion200beta [
	^ FirmwareVersion200beta ifNil: [ FirmwareVersion200beta := '2.0.0-beta' ]
]

{ #category : #accessing }
DelugeSongContainer class >> firmwareVersion210 [
	^ FirmwareVersion210 ifNil: [ FirmwareVersion210 := '2.1.0' ]
]

{ #category : #accessing }
DelugeSongContainer class >> xmlElementName [
	^ 'songContainer'
]

{ #category : #configuring }
DelugeSongContainer >> beEarliestCompatibleFirmware200beta [
	earliestCompatibleFirmware := self class earliestCompatibleFirmware200beta
]

{ #category : #configuring }
DelugeSongContainer >> beEarliestCompatibleFirmware210 [
	earliestCompatibleFirmware := self class earliestCompatibleFirmware210
]

{ #category : #configuring }
DelugeSongContainer >> beFirmwareVersion200beta [
	firmwareVersion := self class firmwareVersion200beta
]

{ #category : #configuring }
DelugeSongContainer >> beFirmwareVersion210 [
	firmwareVersion := self class firmwareVersion210
]

{ #category : #'magritte description' }
DelugeSongContainer >> descriptionEarliestCompatibleFirmware [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #earliestCompatibleFirmware;
		label: 'earliestCompatibleFirmware';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSongContainer >> descriptionFirmwareVersion [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #firmwareVersion;
		label: 'firmwareVersion';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSongContainer >> descriptionSound [
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
DelugeSongContainer >> earliestCompatibleFirmware [
	^ earliestCompatibleFirmware
]

{ #category : #accessing }
DelugeSongContainer >> earliestCompatibleFirmware: anObject [
	earliestCompatibleFirmware := anObject
]

{ #category : #accessing }
DelugeSongContainer >> firmwareVersion [
	^ firmwareVersion
]

{ #category : #accessing }
DelugeSongContainer >> firmwareVersion: anObject [
	firmwareVersion := anObject
]

{ #category : #accessing }
DelugeSongContainer >> sound [
	^ sound
]

{ #category : #accessing }
DelugeSongContainer >> sound: anObject [
	sound := anObject
]
