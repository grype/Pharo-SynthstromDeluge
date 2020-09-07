Class {
	#name : #DelugeKitContainer,
	#superclass : #DelugeObject,
	#instVars : [
		'kit',
		'name'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #'instance creation' }
DelugeKitContainer class >> fromAkaiProgramFile: aFile [
	^ self new
		  configureWithAkaiProgramIn: aFile;
		  yourself
]

{ #category : #'instance creation' }
DelugeKitContainer class >> fromFile: aFile [
	| instance file |

	file := aFile asFileReference.
	instance := super fromFile: file.
	instance name: file withoutExtension basename.
	^ instance
]

{ #category : #testing }
DelugeKitContainer class >> isContainer [
	^ true
]

{ #category : #accessing }
DelugeKitContainer class >> xmlElementName [
	^ 'kitContainer'
]

{ #category : #comparing }
DelugeKitContainer >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ kit = anObject kit
]

{ #category : #configuring }
DelugeKitContainer >> configureWithAkaiProgramIn: aFile [
	| akai samplesDestination file |

	file := aFile asFileReference.
	akai := (AkaiMPCProgramReader on: file binaryReadStream) next.
	name := (akai name copyReplaceAll: '_' with: ' ') trimBoth.
	samplesDestination := 'SAMPLES/AKAI/' , file parent basename.
	(1 to: 16) do: [ :i | 
		| sampleName sampleFileName |

		sampleName := akai sampleAtPad: i.
		sampleFileName := sampleName , '.WAV'.
		(file parent / sampleFileName) asFileReference isFile ifTrue: [ 
			| sound |

			sound := DelugeSound fromFile: file parent / sampleFileName.
			sound osc1 loopMode: 1.
			sound osc1 fileName: samplesDestination , '/' , sampleFileName.
			kit soundSources add: sound ] ]
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

{ #category : #writing }
DelugeKitContainer >> exportTo: aDir copyingSamplesFrom: aSampleDir [
	| rootDir |

	rootDir := aDir asFileReference.
	self
		writeToFile: (rootDir / #KITS / name withExtension: 'XML')
		copyingSamplesFrom: aSampleDir asFileReference
		to: rootDir
]

{ #category : #comparing }
DelugeKitContainer >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ kit hash
]

{ #category : #initialization }
DelugeKitContainer >> initialize [
	super initialize.
	kit := DelugeKit new
]

{ #category : #accessing }
DelugeKitContainer >> kit [
	^ kit
]

{ #category : #accessing }
DelugeKitContainer >> kit: anObject [
	kit := anObject
]

{ #category : #accessing }
DelugeKitContainer >> name [
	^ name
]

{ #category : #accessing }
DelugeKitContainer >> name: anObject [
	name := anObject
]

{ #category : #writing }
DelugeKitContainer >> writeToFile: aFile copyingSamplesFrom: fromDir to: toDir [
	| sampleNames toDirResolved fromDirResolved |

	self toFile: aFile asFileReference.
	toDirResolved := toDir asFileReference.
	toDirResolved isDirectory ifFalse: [ 
		toDirResolved ensureCreateDirectory ].
	fromDirResolved := fromDir asFileReference.
	sampleNames := (kit soundSources select: [ :sound | 
		                sound isNotNil and: [ 
			                sound osc1 isNotNil and: [ 
				                sound osc1 fileName isNotNil ] ] ])
		               collect: [ :sound | sound osc1 fileName ]
		               as: Set.
		
	sampleNames do: [ :sampleName | 
		(toDirResolved / sampleName) isFile ifTrue: [ (toDirResolved / sampleName) delete ].
		(toDirResolved / sampleName) parent ensureCreateDirectory.
		fromDirResolved / sampleName asPath basename copyTo:
			toDirResolved / sampleName ]
]
