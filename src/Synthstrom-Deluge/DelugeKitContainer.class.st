Class {
	#name : #DelugeKitContainer,
	#superclass : #DelugeObject,
	#instVars : [
		'kit',
		'earliestCompatibleFirmware',
		'firmwareVersion'
	],
	#category : #'Synthstrom-Deluge'
}

{ #category : #testing }
DelugeKitContainer class >> canBeRoot [
	^ true
]

{ #category : #accessing }
DelugeKitContainer class >> xmlElementName [
	^ 'kitContainer'
]

{ #category : #'magritte description' }
DelugeKitContainer >> descriptionEarliestCompatibleFirmware [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #earliestCompatibleFirmware;
		label: 'earliestCompatibleFirmware';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeKitContainer >> descriptionFirmwareVersion [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #firmwareVersion;
		label: 'firmwareVersion';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeKitContainer >> descriptionKit [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #kit;
		label: 'kit';
		priority: 1;
		classes: { DelugeKit };
		beXmlInlineElement;
		yourself
]

{ #category : #accessing }
DelugeKitContainer >> earliestCompatibleFirmware [
	^ earliestCompatibleFirmware 
]

{ #category : #accessing }
DelugeKitContainer >> earliestCompatibleFirmware: anObject [
	earliestCompatibleFirmware := anObject
]

{ #category : #accessing }
DelugeKitContainer >> firmwareVersion [
	^ firmwareVersion 
]

{ #category : #accessing }
DelugeKitContainer >> firmwareVersion: anObject [
	firmwareVersion := anObject
]

{ #category : #accessing }
DelugeKitContainer >> kit [
	^ kit
]

{ #category : #accessing }
DelugeKitContainer >> kit: anObject [
	kit := anObject
]
