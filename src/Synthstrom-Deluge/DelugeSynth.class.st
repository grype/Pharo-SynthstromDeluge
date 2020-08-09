Class {
	#name : #DelugeSynth,
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
DelugeSynth class >> canBeRoot [
	^ true
]

{ #category : #accessing }
DelugeSynth class >> earliestCompatibleFirmware200beta [
	^ EarliestCompatibleFirmware200beta ifNil: [ EarliestCompatibleFirmware200beta := '2.0.0-beta' ]
]

{ #category : #accessing }
DelugeSynth class >> earliestCompatibleFirmware210 [
	^ EarliestCompatibleFirmware210 ifNil: [ EarliestCompatibleFirmware210 := '2.1.0' ]
]

{ #category : #accessing }
DelugeSynth class >> firmwareVersion200beta [
	^ FirmwareVersion200beta ifNil: [ FirmwareVersion200beta := '2.0.0-beta' ]
]

{ #category : #accessing }
DelugeSynth class >> firmwareVersion210 [
	^ FirmwareVersion210 ifNil: [ FirmwareVersion210 := '2.1.0' ]
]

{ #category : #accessing }
DelugeSynth class >> xmlElementName [
	^ 'synth'
]

{ #category : #configuring }
DelugeSynth >> beEarliestCompatibleFirmware200beta [
	earliestCompatibleFirmware := self class earliestCompatibleFirmware200beta
]

{ #category : #configuring }
DelugeSynth >> beEarliestCompatibleFirmware210 [
	earliestCompatibleFirmware := self class earliestCompatibleFirmware210
]

{ #category : #configuring }
DelugeSynth >> beFirmwareVersion200beta [
	firmwareVersion := self class firmwareVersion200beta
]

{ #category : #configuring }
DelugeSynth >> beFirmwareVersion210 [
	firmwareVersion := self class firmwareVersion210
]

{ #category : #'magritte description' }
DelugeSynth >> descriptionEarliestCompatibleFirmware [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #earliestCompatibleFirmware;
		label: 'earliestCompatibleFirmware';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSynth >> descriptionFirmwareVersion [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #firmwareVersion;
		label: 'firmwareVersion';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSynth >> descriptionSound [
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
DelugeSynth >> earliestCompatibleFirmware [
	^ earliestCompatibleFirmware
]

{ #category : #accessing }
DelugeSynth >> earliestCompatibleFirmware: anObject [
	earliestCompatibleFirmware := anObject
]

{ #category : #accessing }
DelugeSynth >> firmwareVersion [
	^ firmwareVersion
]

{ #category : #accessing }
DelugeSynth >> firmwareVersion: anObject [
	firmwareVersion := anObject
]

{ #category : #accessing }
DelugeSynth >> sound [
	^ sound
]

{ #category : #accessing }
DelugeSynth >> sound: anObject [
	sound := anObject
]
