Class {
	#name : #DelugeSynth,
	#superclass : #DelugeObject,
	#instVars : [
		'earliestCompatibleFirmware',
		'firmwareVersion',
		'sound'
	],
	#category : #'Synthstrom-Deluge'
}

{ #category : #testing }
DelugeSynth class >> canBeRoot [
	^ true
]

{ #category : #accessing }
DelugeSynth class >> xmlElementName [
	^ 'synth'
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
