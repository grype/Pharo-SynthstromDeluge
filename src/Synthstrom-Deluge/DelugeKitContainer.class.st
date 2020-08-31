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
	| instance akai dir |

	instance := self new.
	instance configureWithAkaiProgramIn: aFile.
	^ instance
]

{ #category : #'instance creation' }
DelugeKitContainer class >> fromFile: aFile [
	| instance file |

	file := aFile asFileReference.
	instance := super fromFile: file.
	instance name: file withoutExtension basename.
	^ instance
]

{ #category : #'as yet unclassified' }
DelugeKitContainer class >> initPreset [
	^ (STONReader on: 'DelugeKitContainer{#kit:DelugeKit{#currentFilterType:''lpf'',#defaultParams:DelugeDefaultParams{#bitCrush:1/2,#delay:DelugeDelay{#feedback:1/2,#rate:0},#equalizer:DelugeEqualizer{#bass:0,#bassFrequency:0,#treble:0,#trebleFrequency:0},#hpf:DelugeHpf{#frequency:1/2,#resonance:1/2},#lpf:DelugeLpf{#frequency:2147483647/4294967296,#resonance:1/2},#modFXDepth:0,#modFXFeedback:1/2,#modFXOffset:0,#modFXRate:7/8,#pan:0,#reverbAmount:1/2,#sampleRateReduction:1/2,#stutterRate:0,#volume:222379213/1073741824},#lpfMode:''24dB'',#modFXCurrentParam:''feedback'',#modFXType:''flanger'',#soundSources:OrderedCollection[DelugeSound{#compressor:DelugeCompressor{#attack:327244,#release:936,#syncLevel:7},#defaultParams:DelugeDefaultParams{#arpeggiatorGate:0,#arpeggiatorRate:0,#bitCrush:1/2,#carrier1Feedback:1/2,#carrier2Feedback:1/2,#compressorShape:1846835929/2147483648,#delayFeedback:1/2,#delayRate:0,#envelope1:DelugeEnvelope1{#attack:1/2,#decay:966367637/1073741824,#release:1/2,#sustain:1073741801/2147483648},#envelope2:DelugeEnvelope2{#attack:966367637/1073741824,#decay:966367637/1073741824,#release:966367637/1073741824,#sustain:4294967273/4294967296},#equalizer:DelugeEqualizer{#bass:0,#bassFrequency:0,#treble:0,#trebleFrequency:0},#hpfFrequency:1/2,#hpfResonance:1/2,#lfo1Rate:214748351/2147483648,#lfo2Rate:0,#lpfFrequency:2147483647/4294967296,#lpfResonance:1/2,#modFXDepth:0,#modFXFeedback:0,#modFXOffset:0,#modFXRate:0,#modulator1Amount:1/2,#modulator1Feedback:1/2,#modulator2Amount:1/2,#modulator2Feedback:1/2,#noiseVolume:1/2,#oscAPulseWidth:0,#oscAVolume:2147483647/4294967296,#oscBPulseWidth:0,#oscBVolume:1/2,#pan:0,#patchCables:DelugePatchCables{#patchCable:DelugePatchCable{#amount:134217725/536870912,#destination:''volume'',#source:''velocity''}},#portamento:1/2,#reverbAmount:1/2,#sampleRateReduction:1/2,#stutterRate:0,#volume:161061269/536870912},#delay:DelugeDelay{#analog:0,#pingPong:1,#syncLevel:8},#lfo1:DelugeLfo1{#syncLevel:0,#type:''triangle''},#lfo2:DelugeLfo2{#type:''triangle''},#lpfMode:''24dB'',#modFXType:''none'',#modKnobs:OrderedCollection[DelugeModKnob{#controlsParam:''pan''},DelugeModKnob{#controlsParam:''volumePostFX''},DelugeModKnob{#controlsParam:''lpfResonance''},DelugeModKnob{#controlsParam:''lpfFrequency''},DelugeModKnob{#controlsParam:''env1Release''},DelugeModKnob{#controlsParam:''env1Attack''},DelugeModKnob{#controlsParam:''delayFeedback''},DelugeModKnob{#controlsParam:''delayRate''},DelugeModKnob{#controlsParam:''reverbAmount''},DelugeModKnob{#controlsParam:''volumePostReverbSend'',#patchAmountFromSource:''compressor''},DelugeModKnob{#controlsParam:''pitch'',#patchAmountFromSource:''lfo1''},DelugeModKnob{#controlsParam:''lfo1Rate''},DelugeModKnob{#controlsParam:''pitch''},DelugeModKnob{#controlsParam:''stutterRate''},DelugeModKnob{#controlsParam:''bitcrushAmount''},DelugeModKnob{#controlsParam:''sampleRateReduction''}],#mode:''subtractive'',#name:''808 Kick descending'',#osc1:DelugeOsc1{#fileName:''SAMPLES/DRUMS/Kick/808 Kick descending.wav'',#loopMode:1,#reversed:0,#timeStretchAmount:0,#timeStretchEnable:0,#type:''sample'',#zone:DelugeZone{#endSamplePos:28179,#startSamplePos:0}},#osc2:DelugeOsc2{#loopMode:0,#reversed:0,#timeStretchAmount:0,#timeStretchEnable:0,#type:''sample''},#polyphonic:''auto'',#sideChainSend:2147483647,#unison:DelugeUnison{#detune:8,#num:1},#voicePriority:1,#arpeggiator:DelugeArpeggiator{#mode:''off'',#numOctaves:2,#syncLevel:7}}]},#name:''init''}' readStream) next
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

{ #category : #'as yet unclassified' }
DelugeKitContainer >> configureWithAkaiProgramIn: aFile [
	| akai samplesDestination file newSounds |

	file := aFile asFileReference.
	akai := (AkaiMPCProgramReader on: file binaryReadStream) next.
	name := akai name.
	samplesDestination := 'SAMPLES/AKAI/' , file parent basename.
	newSounds := OrderedCollection new.
	(1 to: 16) do: [ :i | 
		| sampleName sampleFileName snd |

		sampleName := akai sampleAtPad: i.
		sampleFileName := sampleName , '.WAV'.
		(file parent / sampleFileName) asFileReference isFile ifTrue: [ 
			snd := (kit soundSources
				        at: i
				        ifAbsent: [ 
				        kit soundSources at: 1 ifAbsent: [ DelugeSound new ] ])
				       deepCopy.
			snd name: sampleName.
			snd osc1
				beTypeSample;
				fileName: samplesDestination , '/' , sampleFileName.
			newSounds add: snd ] ].
	kit soundSources
		removeAll;
		addAll: newSounds
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
