Class {
	#name : #DelugePatchCable,
	#superclass : #DelugeObject,
	#instVars : [
		'amount',
		'destination',
		'source',
		'rangeAdjustable'
	],
	#classVars : [
		'DestinationCarrier1Feedback',
		'DestinationCarrier2Feedback',
		'DestinationDelayRate',
		'DestinationEnv1Attack',
		'DestinationEnv1Decay',
		'DestinationEnv1Sustain',
		'DestinationEnv2Decay',
		'DestinationHpfFrequency',
		'DestinationHpfResonance',
		'DestinationLfo2Rate',
		'DestinationLpfFrequency',
		'DestinationLpfResonance',
		'DestinationModFXDepth',
		'DestinationModFXRate',
		'DestinationModulator1Feedback',
		'DestinationModulator1Pitch',
		'DestinationModulator1Volume',
		'DestinationModulator2Feedback',
		'DestinationModulator2Pitch',
		'DestinationModulator2Volume',
		'DestinationNoiseVolume',
		'DestinationOscAPhaseWidth',
		'DestinationOscAPitch',
		'DestinationOscAVolume',
		'DestinationOscBPhaseWidth',
		'DestinationOscBPitch',
		'DestinationOscBVolume',
		'DestinationPan',
		'DestinationPitch',
		'DestinationRange',
		'DestinationReverbAmount',
		'DestinationVolume',
		'DestinationVolumePostReverbSend',
		'SourceAftertouch',
		'SourceCompressor',
		'SourceEnvelope1',
		'SourceEnvelope2',
		'SourceLfo1',
		'SourceLfo2',
		'SourceNote',
		'SourceRandom',
		'SourceVelocity'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugePatchCable class >> destinationCarrier1Feedback [
	^ DestinationCarrier1Feedback ifNil: [ DestinationCarrier1Feedback := 'carrier1Feedback' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationCarrier2Feedback [
	^ DestinationCarrier2Feedback ifNil: [ DestinationCarrier2Feedback := 'carrier2Feedback' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationDelayRate [
	^ DestinationDelayRate ifNil: [ DestinationDelayRate := 'delayRate' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationEnv1Attack [
	^ DestinationEnv1Attack ifNil: [ DestinationEnv1Attack := 'env1Attack' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationEnv1Decay [
	^ DestinationEnv1Decay ifNil: [ DestinationEnv1Decay := 'env1Decay' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationEnv1Sustain [
	^ DestinationEnv1Sustain ifNil: [ DestinationEnv1Sustain := 'env1Sustain' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationEnv2Decay [
	^ DestinationEnv2Decay ifNil: [ DestinationEnv2Decay := 'env2Decay' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationHpfFrequency [
	^ DestinationHpfFrequency ifNil: [ DestinationHpfFrequency := 'hpfFrequency' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationHpfResonance [
	^ DestinationHpfResonance ifNil: [ DestinationHpfResonance := 'hpfResonance' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationLfo2Rate [
	^ DestinationLfo2Rate ifNil: [ DestinationLfo2Rate := 'lfo2Rate' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationLpfFrequency [
	^ DestinationLpfFrequency ifNil: [ DestinationLpfFrequency := 'lpfFrequency' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationLpfResonance [
	^ DestinationLpfResonance ifNil: [ DestinationLpfResonance := 'lpfResonance' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationModFXDepth [
	^ DestinationModFXDepth ifNil: [ DestinationModFXDepth := 'modFXDepth' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationModFXRate [
	^ DestinationModFXRate ifNil: [ DestinationModFXRate := 'modFXRate' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationModulator1Feedback [
	^ DestinationModulator1Feedback ifNil: [ DestinationModulator1Feedback := 'modulator1Feedback' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationModulator1Pitch [
	^ DestinationModulator1Pitch ifNil: [ DestinationModulator1Pitch := 'modulator1Pitch' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationModulator1Volume [
	^ DestinationModulator1Volume ifNil: [ DestinationModulator1Volume := 'modulator1Volume' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationModulator2Feedback [
	^ DestinationModulator2Feedback ifNil: [ DestinationModulator2Feedback := 'modulator2Feedback' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationModulator2Pitch [
	^ DestinationModulator2Pitch ifNil: [ DestinationModulator2Pitch := 'modulator2Pitch' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationModulator2Volume [
	^ DestinationModulator2Volume ifNil: [ DestinationModulator2Volume := 'modulator2Volume' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationNoiseVolume [
	^ DestinationNoiseVolume ifNil: [ DestinationNoiseVolume := 'noiseVolume' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationOscAPhaseWidth [
	^ DestinationOscAPhaseWidth ifNil: [ DestinationOscAPhaseWidth := 'oscAPhaseWidth' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationOscAPitch [
	^ DestinationOscAPitch ifNil: [ DestinationOscAPitch := 'oscAPitch' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationOscAVolume [
	^ DestinationOscAVolume ifNil: [ DestinationOscAVolume := 'oscAVolume' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationOscBPhaseWidth [
	^ DestinationOscBPhaseWidth ifNil: [ DestinationOscBPhaseWidth := 'oscBPhaseWidth' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationOscBPitch [
	^ DestinationOscBPitch ifNil: [ DestinationOscBPitch := 'oscBPitch' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationOscBVolume [
	^ DestinationOscBVolume ifNil: [ DestinationOscBVolume := 'oscBVolume' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationPan [
	^ DestinationPan ifNil: [ DestinationPan := 'pan' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationPitch [
	^ DestinationPitch ifNil: [ DestinationPitch := 'pitch' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationRange [
	^ DestinationRange ifNil: [ DestinationRange := 'range' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationReverbAmount [
	^ DestinationReverbAmount ifNil: [ DestinationReverbAmount := 'reverbAmount' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationVolume [
	^ DestinationVolume ifNil: [ DestinationVolume := 'volume' ]
]

{ #category : #accessing }
DelugePatchCable class >> destinationVolumePostReverbSend [
	^ DestinationVolumePostReverbSend ifNil: [ DestinationVolumePostReverbSend := 'volumePostReverbSend' ]
]

{ #category : #accessing }
DelugePatchCable class >> sourceAftertouch [
	^ SourceAftertouch ifNil: [ SourceAftertouch := 'aftertouch' ]
]

{ #category : #accessing }
DelugePatchCable class >> sourceCompressor [
	^ SourceCompressor ifNil: [ SourceCompressor := 'compressor' ]
]

{ #category : #accessing }
DelugePatchCable class >> sourceEnvelope1 [
	^ SourceEnvelope1 ifNil: [ SourceEnvelope1 := 'envelope1' ]
]

{ #category : #accessing }
DelugePatchCable class >> sourceEnvelope2 [
	^ SourceEnvelope2 ifNil: [ SourceEnvelope2 := 'envelope2' ]
]

{ #category : #accessing }
DelugePatchCable class >> sourceLfo1 [
	^ SourceLfo1 ifNil: [ SourceLfo1 := 'lfo1' ]
]

{ #category : #accessing }
DelugePatchCable class >> sourceLfo2 [
	^ SourceLfo2 ifNil: [ SourceLfo2 := 'lfo2' ]
]

{ #category : #accessing }
DelugePatchCable class >> sourceNote [
	^ SourceNote ifNil: [ SourceNote := 'note' ]
]

{ #category : #accessing }
DelugePatchCable class >> sourceRandom [
	^ SourceRandom ifNil: [ SourceRandom := 'random' ]
]

{ #category : #accessing }
DelugePatchCable class >> sourceVelocity [
	^ SourceVelocity ifNil: [ SourceVelocity := 'velocity' ]
]

{ #category : #accessing }
DelugePatchCable class >> xmlElementName [
	^ 'patchCable'
]

{ #category : #accessing }
DelugePatchCable >> amount [
	^ amount
]

{ #category : #accessing }
DelugePatchCable >> amount: anObject [
	amount := anObject
]

{ #category : #configuring }
DelugePatchCable >> beDestinationCarrier1Feedback [
	destination := self class destinationCarrier1Feedback
]

{ #category : #configuring }
DelugePatchCable >> beDestinationCarrier2Feedback [
	destination := self class destinationCarrier2Feedback
]

{ #category : #configuring }
DelugePatchCable >> beDestinationDelayRate [
	destination := self class destinationDelayRate
]

{ #category : #configuring }
DelugePatchCable >> beDestinationEnv1Attack [
	destination := self class destinationEnv1Attack
]

{ #category : #configuring }
DelugePatchCable >> beDestinationEnv1Decay [
	destination := self class destinationEnv1Decay
]

{ #category : #configuring }
DelugePatchCable >> beDestinationEnv1Sustain [
	destination := self class destinationEnv1Sustain
]

{ #category : #configuring }
DelugePatchCable >> beDestinationEnv2Decay [
	destination := self class destinationEnv2Decay
]

{ #category : #configuring }
DelugePatchCable >> beDestinationHpfFrequency [
	destination := self class destinationHpfFrequency
]

{ #category : #configuring }
DelugePatchCable >> beDestinationHpfResonance [
	destination := self class destinationHpfResonance
]

{ #category : #configuring }
DelugePatchCable >> beDestinationLfo2Rate [
	destination := self class destinationLfo2Rate
]

{ #category : #configuring }
DelugePatchCable >> beDestinationLpfFrequency [
	destination := self class destinationLpfFrequency
]

{ #category : #configuring }
DelugePatchCable >> beDestinationLpfResonance [
	destination := self class destinationLpfResonance
]

{ #category : #configuring }
DelugePatchCable >> beDestinationModFXDepth [
	destination := self class destinationModFXDepth
]

{ #category : #configuring }
DelugePatchCable >> beDestinationModFXRate [
	destination := self class destinationModFXRate
]

{ #category : #configuring }
DelugePatchCable >> beDestinationModulator1Feedback [
	destination := self class destinationModulator1Feedback
]

{ #category : #configuring }
DelugePatchCable >> beDestinationModulator1Pitch [
	destination := self class destinationModulator1Pitch
]

{ #category : #configuring }
DelugePatchCable >> beDestinationModulator1Volume [
	destination := self class destinationModulator1Volume
]

{ #category : #configuring }
DelugePatchCable >> beDestinationModulator2Feedback [
	destination := self class destinationModulator2Feedback
]

{ #category : #configuring }
DelugePatchCable >> beDestinationModulator2Pitch [
	destination := self class destinationModulator2Pitch
]

{ #category : #configuring }
DelugePatchCable >> beDestinationModulator2Volume [
	destination := self class destinationModulator2Volume
]

{ #category : #configuring }
DelugePatchCable >> beDestinationNoiseVolume [
	destination := self class destinationNoiseVolume
]

{ #category : #configuring }
DelugePatchCable >> beDestinationOscAPhaseWidth [
	destination := self class destinationOscAPhaseWidth
]

{ #category : #configuring }
DelugePatchCable >> beDestinationOscAPitch [
	destination := self class destinationOscAPitch
]

{ #category : #configuring }
DelugePatchCable >> beDestinationOscAVolume [
	destination := self class destinationOscAVolume
]

{ #category : #configuring }
DelugePatchCable >> beDestinationOscBPhaseWidth [
	destination := self class destinationOscBPhaseWidth
]

{ #category : #configuring }
DelugePatchCable >> beDestinationOscBPitch [
	destination := self class destinationOscBPitch
]

{ #category : #configuring }
DelugePatchCable >> beDestinationOscBVolume [
	destination := self class destinationOscBVolume
]

{ #category : #configuring }
DelugePatchCable >> beDestinationPan [
	destination := self class destinationPan
]

{ #category : #configuring }
DelugePatchCable >> beDestinationPitch [
	destination := self class destinationPitch
]

{ #category : #configuring }
DelugePatchCable >> beDestinationRange [
	destination := self class destinationRange
]

{ #category : #configuring }
DelugePatchCable >> beDestinationReverbAmount [
	destination := self class destinationReverbAmount
]

{ #category : #configuring }
DelugePatchCable >> beDestinationVolume [
	destination := self class destinationVolume
]

{ #category : #configuring }
DelugePatchCable >> beDestinationVolumePostReverbSend [
	destination := self class destinationVolumePostReverbSend
]

{ #category : #configuring }
DelugePatchCable >> beSourceAftertouch [
	source := self class sourceAftertouch
]

{ #category : #configuring }
DelugePatchCable >> beSourceCompressor [
	source := self class sourceCompressor
]

{ #category : #configuring }
DelugePatchCable >> beSourceEnvelope1 [
	source := self class sourceEnvelope1
]

{ #category : #configuring }
DelugePatchCable >> beSourceEnvelope2 [
	source := self class sourceEnvelope2
]

{ #category : #configuring }
DelugePatchCable >> beSourceLfo1 [
	source := self class sourceLfo1
]

{ #category : #configuring }
DelugePatchCable >> beSourceLfo2 [
	source := self class sourceLfo2
]

{ #category : #configuring }
DelugePatchCable >> beSourceNote [
	source := self class sourceNote
]

{ #category : #configuring }
DelugePatchCable >> beSourceRandom [
	source := self class sourceRandom
]

{ #category : #configuring }
DelugePatchCable >> beSourceVelocity [
	source := self class sourceVelocity
]

{ #category : #'magritte description' }
DelugePatchCable >> descriptionAmount [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #amount;
		label: 'amount';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugePatchCable >> descriptionDestination [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #destination;
		label: 'destination';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugePatchCable >> descriptionRangeAdjustable [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #rangeAdjustable;
		label: 'rangeAdjustable';
		priority: 4;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugePatchCable >> descriptionSource [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #source;
		label: 'source';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #accessing }
DelugePatchCable >> destination [
	^ destination
]

{ #category : #accessing }
DelugePatchCable >> destination: anObject [
	destination := anObject
]

{ #category : #accessing }
DelugePatchCable >> rangeAdjustable [
	^ rangeAdjustable
]

{ #category : #accessing }
DelugePatchCable >> rangeAdjustable: anObject [
	rangeAdjustable := anObject
]

{ #category : #accessing }
DelugePatchCable >> source [
	^ source
]

{ #category : #accessing }
DelugePatchCable >> source: anObject [
	source := anObject
]
