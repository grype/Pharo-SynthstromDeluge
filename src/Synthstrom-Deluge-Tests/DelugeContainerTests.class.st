Class {
	#name : #DelugeContainerTests,
	#superclass : #TestCase,
	#instVars : [
		'file'
	],
	#classVars : [
		'RootDir'
	],
	#category : #'Synthstrom-Deluge-Tests'
}

{ #category : #'as yet unclassified' }
DelugeContainerTests class >> kitsDir [
	^ self rootDir / #KITS
]

{ #category : #'as yet unclassified' }
DelugeContainerTests class >> randomKitFile [
	^ self randomXMLFileFrom: self kitsDir
]

{ #category : #'as yet unclassified' }
DelugeContainerTests class >> randomSynthFile [
	^ self randomXMLFileFrom: self synthsDir
]

{ #category : #'as yet unclassified' }
DelugeContainerTests class >> randomXMLFileFrom: aDir [
	^ (aDir files select: [ :each | each extension = #XML ]) atRandom
]

{ #category : #'as yet unclassified' }
DelugeContainerTests class >> rootDir [
	^ RootDir ifNil: [ RootDir := FileLocator home asFileReference / #Sounds / #Deluge / #'3.0 Disk Dump' ]
]

{ #category : #'as yet unclassified' }
DelugeContainerTests class >> synthsDir [
	^ self rootDir / #SYNTHS
]

{ #category : #tests }
DelugeContainerTests class >> tempExportFile [
	^ '/tmp/DelugeExport.XML' asFileReference
]
