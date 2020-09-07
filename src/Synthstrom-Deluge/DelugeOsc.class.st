Class {
	#name : #DelugeOsc,
	#superclass : #DelugeObject,
	#instVars : [
		'zone',
		'cents',
		'fileName',
		'loopMode',
		'retrigPhase',
		'reversed',
		'sampleRanges',
		'timeStretchAmount',
		'timeStretchEnable',
		'transpose',
		'type'
	],
	#classVars : [
		'TypeAnalogSaw',
		'TypeAnalogSquare',
		'TypeSample',
		'TypeSaw',
		'TypeSine',
		'TypeSquare',
		'TypeTriangle'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #'instance creation' }
DelugeOsc class >> fromFile: aFilenameOrReference [
	| fileRef |

	fileRef := aFilenameOrReference asFileReference.
	^ self new
		  fileName: fileRef pathString;
		  beTypeSample;
		  zone: (DelugeZone new
				   startSamplePos: 0;
				   endSamplePos: (self numberOfSamplesIn: fileRef);
				   yourself);
		  yourself
]

{ #category : #'instance creation' }
DelugeOsc class >> numberOfSamplesIn: aFileReference [
	"Returns number of samples in a WAV file. 
	See https://web.archive.org/web/20141213140451/https://ccrma.stanford.edu/courses/422/projects/WaveFormat/.
	One thing worth noting - the offsets may be different than the ones described above, 
	but the sequence of tags and data remains the same. 
	Simply search for key tags to get into the correct position."

	| sampleSize channelSize bitsPerSample dataSize |

	sampleSize := 0.
	aFileReference binaryReadStreamDo: [ :str | 
		(str next: 4) asString = 'RIFF' ifFalse: [ 
			self error: 'Expected RIFF file' ].
		str skipAll: 'fmt' asByteArray.
		str skip: 7.
		channelSize := str nextLittleEndianNumber: 2.
		str skip: 10.
		bitsPerSample := str nextLittleEndianNumber: 2.
		str skipAll: 'data' asByteArray.
		dataSize := str nextLittleEndianNumber: 4.
		sampleSize := dataSize / channelSize / (bitsPerSample / 8) ].
	^ sampleSize
]

{ #category : #accessing }
DelugeOsc class >> typeAnalogSaw [
	^ TypeAnalogSaw ifNil: [ TypeAnalogSaw := 'analogSaw' ]
]

{ #category : #accessing }
DelugeOsc class >> typeAnalogSquare [
	^ TypeAnalogSquare ifNil: [ TypeAnalogSquare := 'analogSquare' ]
]

{ #category : #accessing }
DelugeOsc class >> typeSample [
	^ TypeSample ifNil: [ TypeSample := 'sample' ]
]

{ #category : #accessing }
DelugeOsc class >> typeSaw [
	^ TypeSaw ifNil: [ TypeSaw := 'saw' ]
]

{ #category : #accessing }
DelugeOsc class >> typeSine [
	^ TypeSine ifNil: [ TypeSine := 'sine' ]
]

{ #category : #accessing }
DelugeOsc class >> typeSquare [
	^ TypeSquare ifNil: [ TypeSquare := 'square' ]
]

{ #category : #accessing }
DelugeOsc class >> typeTriangle [
	^ TypeTriangle ifNil: [ TypeTriangle := 'triangle' ]
]

{ #category : #comparing }
DelugeOsc >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ cents = anObject cents and: [ 
		  fileName = anObject fileName and: [ 
			  loopMode = anObject loopMode and: [ 
				  retrigPhase = anObject retrigPhase and: [ 
					  reversed = anObject reversed and: [ 
						  sampleRanges = anObject sampleRanges and: [ 
							  timeStretchAmount = anObject timeStretchAmount and: [ 
								  timeStretchEnable = anObject timeStretchEnable and: [ 
									  transpose = anObject transpose and: [ 
										  type = anObject type and: [ zone = anObject zone ] ] ] ] ] ] ] ] ] ]
]

{ #category : #configuring }
DelugeOsc >> beTypeAnalogSaw [
	type := self class typeAnalogSaw
]

{ #category : #configuring }
DelugeOsc >> beTypeAnalogSquare [
	type := self class typeAnalogSquare
]

{ #category : #configuring }
DelugeOsc >> beTypeSample [
	type := self class typeSample
]

{ #category : #configuring }
DelugeOsc >> beTypeSaw [
	type := self class typeSaw
]

{ #category : #configuring }
DelugeOsc >> beTypeSine [
	type := self class typeSine
]

{ #category : #configuring }
DelugeOsc >> beTypeSquare [
	type := self class typeSquare
]

{ #category : #configuring }
DelugeOsc >> beTypeTriangle [
	type := self class typeTriangle
]

{ #category : #accessing }
DelugeOsc >> cents [
	^ cents
]

{ #category : #accessing }
DelugeOsc >> cents: anObject [
	cents := anObject
]

{ #category : #'magritte description' }
DelugeOsc >> descriptionCents [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #cents;
		label: 'cents';
		priority: 7;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc >> descriptionFileName [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #fileName;
		label: 'fileName';
		priority: 3;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc >> descriptionLoopMode [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #loopMode;
		label: 'loopMode';
		priority: 9;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc >> descriptionRetrigPhase [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #retrigPhase;
		label: 'retrigPhase';
		priority: 1;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc >> descriptionReversed [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #reversed;
		label: 'reversed';
		priority: 8;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc >> descriptionSampleRanges [
	<magritteDescription>
	^ MAToManyRelationDescription new
		accessor: #sampleRanges;
		label: 'sampleRanges';
		priority: 3;
		classes: { DelugeSampleRange };
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc >> descriptionTimeStretchAmount [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #timeStretchAmount;
		label: 'timeStretchAmount';
		priority: 1;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc >> descriptionTimeStretchEnable [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #timeStretchEnable;
		label: 'timeStretchEnable';
		priority: 4;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc >> descriptionTranspose [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #transpose;
		label: 'transpose';
		priority: 2;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc >> descriptionType [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #type;
		label: 'type';
		priority: 6;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeOsc >> descriptionZone [
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
DelugeOsc >> fileName [
	^ fileName
]

{ #category : #accessing }
DelugeOsc >> fileName: anObject [
	fileName := anObject
]

{ #category : #comparing }
DelugeOsc >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ cents hash bitXor: (fileName hash bitXor:
			   (loopMode hash bitXor: (retrigPhase hash bitXor:
					     (reversed hash bitXor: (sampleRanges hash bitXor:
							       (timeStretchAmount hash bitXor:
								        (timeStretchEnable hash bitXor:
									         (transpose hash bitXor:
										          (type hash bitXor: zone hash)))))))))
]

{ #category : #initialization }
DelugeOsc >> initialize [
	super initialize.
	loopMode := 0.
	reversed := 0.
	timeStretchAmount := 0.
	timeStretchEnable := 0
]

{ #category : #accessing }
DelugeOsc >> loopMode [
	^ loopMode
]

{ #category : #accessing }
DelugeOsc >> loopMode: anObject [
	loopMode := anObject
]

{ #category : #accessing }
DelugeOsc >> retrigPhase [
	^ retrigPhase
]

{ #category : #accessing }
DelugeOsc >> retrigPhase: anObject [
	retrigPhase := anObject
]

{ #category : #accessing }
DelugeOsc >> reversed [
	^ reversed
]

{ #category : #accessing }
DelugeOsc >> reversed: anObject [
	reversed := anObject
]

{ #category : #accessing }
DelugeOsc >> sampleRanges [
	^ sampleRanges
]

{ #category : #accessing }
DelugeOsc >> sampleRanges: anObject [
	sampleRanges := anObject
]

{ #category : #accessing }
DelugeOsc >> timeStretchAmount [
	^ timeStretchAmount
]

{ #category : #accessing }
DelugeOsc >> timeStretchAmount: anObject [
	timeStretchAmount := anObject
]

{ #category : #accessing }
DelugeOsc >> timeStretchEnable [
	^ timeStretchEnable
]

{ #category : #accessing }
DelugeOsc >> timeStretchEnable: anObject [
	timeStretchEnable := anObject
]

{ #category : #accessing }
DelugeOsc >> transpose [
	^ transpose
]

{ #category : #accessing }
DelugeOsc >> transpose: anObject [
	transpose := anObject
]

{ #category : #accessing }
DelugeOsc >> type [
	^ type
]

{ #category : #accessing }
DelugeOsc >> type: anObject [
	type := anObject
]

{ #category : #accessing }
DelugeOsc >> zone [
	^ zone
]

{ #category : #accessing }
DelugeOsc >> zone: anObject [
	zone := anObject
]
