Class {
	#name : #DelugeModKnob,
	#superclass : #DelugeObject,
	#instVars : [
		'controlsParam',
		'patchAmountFromSource'
	],
	#classVars : [
		'ControlsParamBitcrushAmount',
		'ControlsParamDelayFeedback',
		'ControlsParamDelayRate',
		'ControlsParamEnv1Attack',
		'ControlsParamEnv1Release',
		'ControlsParamLfo1Rate',
		'ControlsParamLpfFrequency',
		'ControlsParamLpfResonance',
		'ControlsParamPan',
		'ControlsParamPitch',
		'ControlsParamReverbAmount',
		'ControlsParamSampleRateReduction',
		'ControlsParamStutterRate',
		'ControlsParamVolumePostFX',
		'ControlsParamVolumePostReverbSend',
		'PatchAmountFromSourceCompressor',
		'PatchAmountFromSourceLfo1'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeModKnob class >> controlsParamBass [
	^ ControlsParamBass ifNil: [ ControlsParamBass := 'bass' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamBitcrushAmount [
	^ ControlsParamBitcrushAmount ifNil: [ ControlsParamBitcrushAmount := 'bitcrushAmount' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamCarrier1Feedback [
	^ ControlsParamCarrier1Feedback ifNil: [ ControlsParamCarrier1Feedback := 'carrier1Feedback' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamCarrier2Feedback [
	^ ControlsParamCarrier2Feedback ifNil: [ ControlsParamCarrier2Feedback := 'carrier2Feedback' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamDelayFeedback [
	^ ControlsParamDelayFeedback ifNil: [ ControlsParamDelayFeedback := 'delayFeedback' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamDelayRate [
	^ ControlsParamDelayRate ifNil: [ ControlsParamDelayRate := 'delayRate' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamEnv1Attack [
	^ ControlsParamEnv1Attack ifNil: [ ControlsParamEnv1Attack := 'env1Attack' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamEnv1Decay [
	^ ControlsParamEnv1Decay ifNil: [ ControlsParamEnv1Decay := 'env1Decay' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamEnv1Release [
	^ ControlsParamEnv1Release ifNil: [ ControlsParamEnv1Release := 'env1Release' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamEnv1Sustain [
	^ ControlsParamEnv1Sustain ifNil: [ ControlsParamEnv1Sustain := 'env1Sustain' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamEnv2Attack [
	^ ControlsParamEnv2Attack ifNil: [ ControlsParamEnv2Attack := 'env2Attack' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamEnv2Decay [
	^ ControlsParamEnv2Decay ifNil: [ ControlsParamEnv2Decay := 'env2Decay' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamEnv2Sustain [
	^ ControlsParamEnv2Sustain ifNil: [ ControlsParamEnv2Sustain := 'env2Sustain' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamHpfFrequency [
	^ ControlsParamHpfFrequency ifNil: [ ControlsParamHpfFrequency := 'hpfFrequency' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamHpfResonance [
	^ ControlsParamHpfResonance ifNil: [ ControlsParamHpfResonance := 'hpfResonance' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamLfo1Rate [
	^ ControlsParamLfo1Rate ifNil: [ ControlsParamLfo1Rate := 'lfo1Rate' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamLfo2Rate [
	^ ControlsParamLfo2Rate ifNil: [ ControlsParamLfo2Rate := 'lfo2Rate' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamLpfFrequency [
	^ ControlsParamLpfFrequency ifNil: [ ControlsParamLpfFrequency := 'lpfFrequency' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamLpfResonance [
	^ ControlsParamLpfResonance ifNil: [ ControlsParamLpfResonance := 'lpfResonance' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamModFXDepth [
	^ ControlsParamModFXDepth ifNil: [ ControlsParamModFXDepth := 'modFXDepth' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamModFXFeedback [
	^ ControlsParamModFXFeedback ifNil: [ ControlsParamModFXFeedback := 'modFXFeedback' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamModFXRate [
	^ ControlsParamModFXRate ifNil: [ ControlsParamModFXRate := 'modFXRate' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamModulator1Feedback [
	^ ControlsParamModulator1Feedback ifNil: [ ControlsParamModulator1Feedback := 'modulator1Feedback' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamModulator1Pitch [
	^ ControlsParamModulator1Pitch ifNil: [ ControlsParamModulator1Pitch := 'modulator1Pitch' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamModulator1Volume [
	^ ControlsParamModulator1Volume ifNil: [ ControlsParamModulator1Volume := 'modulator1Volume' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamModulator2Feedback [
	^ ControlsParamModulator2Feedback ifNil: [ ControlsParamModulator2Feedback := 'modulator2Feedback' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamModulator2Pitch [
	^ ControlsParamModulator2Pitch ifNil: [ ControlsParamModulator2Pitch := 'modulator2Pitch' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamModulator2Volume [
	^ ControlsParamModulator2Volume ifNil: [ ControlsParamModulator2Volume := 'modulator2Volume' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamNoiseVolume [
	^ ControlsParamNoiseVolume ifNil: [ ControlsParamNoiseVolume := 'noiseVolume' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamOscAPhaseWidth [
	^ ControlsParamOscAPhaseWidth ifNil: [ ControlsParamOscAPhaseWidth := 'oscAPhaseWidth' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamOscAPitch [
	^ ControlsParamOscAPitch ifNil: [ ControlsParamOscAPitch := 'oscAPitch' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamOscAVolume [
	^ ControlsParamOscAVolume ifNil: [ ControlsParamOscAVolume := 'oscAVolume' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamOscBPhaseWidth [
	^ ControlsParamOscBPhaseWidth ifNil: [ ControlsParamOscBPhaseWidth := 'oscBPhaseWidth' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamOscBPitch [
	^ ControlsParamOscBPitch ifNil: [ ControlsParamOscBPitch := 'oscBPitch' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamOscBVolume [
	^ ControlsParamOscBVolume ifNil: [ ControlsParamOscBVolume := 'oscBVolume' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamPan [
	^ ControlsParamPan ifNil: [ ControlsParamPan := 'pan' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamPitch [
	^ ControlsParamPitch ifNil: [ ControlsParamPitch := 'pitch' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamPortamento [
	^ ControlsParamPortamento ifNil: [ ControlsParamPortamento := 'portamento' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamRange [
	^ ControlsParamRange ifNil: [ ControlsParamRange := 'range' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamReverbAmount [
	^ ControlsParamReverbAmount ifNil: [ ControlsParamReverbAmount := 'reverbAmount' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamSampleRateReduction [
	^ ControlsParamSampleRateReduction ifNil: [ ControlsParamSampleRateReduction := 'sampleRateReduction' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamStutterRate [
	^ ControlsParamStutterRate ifNil: [ ControlsParamStutterRate := 'stutterRate' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamTreble [
	^ ControlsParamTreble ifNil: [ ControlsParamTreble := 'treble' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamVolumePostFX [
	^ ControlsParamVolumePostFX ifNil: [ ControlsParamVolumePostFX := 'volumePostFX' ]
]

{ #category : #accessing }
DelugeModKnob class >> controlsParamVolumePostReverbSend [
	^ ControlsParamVolumePostReverbSend ifNil: [ ControlsParamVolumePostReverbSend := 'volumePostReverbSend' ]
]

{ #category : #accessing }
DelugeModKnob class >> patchAmountFromSourceCompressor [
	^ PatchAmountFromSourceCompressor ifNil: [ PatchAmountFromSourceCompressor := 'compressor' ]
]

{ #category : #accessing }
DelugeModKnob class >> patchAmountFromSourceEnvelope2 [
	^ PatchAmountFromSourceEnvelope2 ifNil: [ PatchAmountFromSourceEnvelope2 := 'envelope2' ]
]

{ #category : #accessing }
DelugeModKnob class >> patchAmountFromSourceLfo1 [
	^ PatchAmountFromSourceLfo1 ifNil: [ PatchAmountFromSourceLfo1 := 'lfo1' ]
]

{ #category : #accessing }
DelugeModKnob class >> patchAmountFromSourceLfo2 [
	^ PatchAmountFromSourceLfo2 ifNil: [ PatchAmountFromSourceLfo2 := 'lfo2' ]
]

{ #category : #accessing }
DelugeModKnob class >> xmlElementName [
	^ 'modKnob'
]

{ #category : #comparing }
DelugeModKnob >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ controlsParam = anObject controlsParam and: [ 
		  patchAmountFromSource = anObject patchAmountFromSource ]
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamBass [
	controlsParam := self class controlsParamBass
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamBitcrushAmount [
	controlsParam := self class controlsParamBitcrushAmount
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamCarrier1Feedback [
	controlsParam := self class controlsParamCarrier1Feedback
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamCarrier2Feedback [
	controlsParam := self class controlsParamCarrier2Feedback
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamDelayFeedback [
	controlsParam := self class controlsParamDelayFeedback
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamDelayRate [
	controlsParam := self class controlsParamDelayRate
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamEnv1Attack [
	controlsParam := self class controlsParamEnv1Attack
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamEnv1Decay [
	controlsParam := self class controlsParamEnv1Decay
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamEnv1Release [
	controlsParam := self class controlsParamEnv1Release
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamEnv1Sustain [
	controlsParam := self class controlsParamEnv1Sustain
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamEnv2Attack [
	controlsParam := self class controlsParamEnv2Attack
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamEnv2Decay [
	controlsParam := self class controlsParamEnv2Decay
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamEnv2Sustain [
	controlsParam := self class controlsParamEnv2Sustain
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamHpfFrequency [
	controlsParam := self class controlsParamHpfFrequency
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamHpfResonance [
	controlsParam := self class controlsParamHpfResonance
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamLfo1Rate [
	controlsParam := self class controlsParamLfo1Rate
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamLfo2Rate [
	controlsParam := self class controlsParamLfo2Rate
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamLpfFrequency [
	controlsParam := self class controlsParamLpfFrequency
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamLpfResonance [
	controlsParam := self class controlsParamLpfResonance
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamModFXDepth [
	controlsParam := self class controlsParamModFXDepth
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamModFXFeedback [
	controlsParam := self class controlsParamModFXFeedback
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamModFXRate [
	controlsParam := self class controlsParamModFXRate
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamModulator1Feedback [
	controlsParam := self class controlsParamModulator1Feedback
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamModulator1Pitch [
	controlsParam := self class controlsParamModulator1Pitch
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamModulator1Volume [
	controlsParam := self class controlsParamModulator1Volume
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamModulator2Feedback [
	controlsParam := self class controlsParamModulator2Feedback
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamModulator2Pitch [
	controlsParam := self class controlsParamModulator2Pitch
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamModulator2Volume [
	controlsParam := self class controlsParamModulator2Volume
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamNoiseVolume [
	controlsParam := self class controlsParamNoiseVolume
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamOscAPhaseWidth [
	controlsParam := self class controlsParamOscAPhaseWidth
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamOscAPitch [
	controlsParam := self class controlsParamOscAPitch
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamOscAVolume [
	controlsParam := self class controlsParamOscAVolume
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamOscBPhaseWidth [
	controlsParam := self class controlsParamOscBPhaseWidth
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamOscBPitch [
	controlsParam := self class controlsParamOscBPitch
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamOscBVolume [
	controlsParam := self class controlsParamOscBVolume
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamPan [
	controlsParam := self class controlsParamPan
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamPitch [
	controlsParam := self class controlsParamPitch
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamPortamento [
	controlsParam := self class controlsParamPortamento
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamRange [
	controlsParam := self class controlsParamRange
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamReverbAmount [
	controlsParam := self class controlsParamReverbAmount
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamSampleRateReduction [
	controlsParam := self class controlsParamSampleRateReduction
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamStutterRate [
	controlsParam := self class controlsParamStutterRate
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamTreble [
	controlsParam := self class controlsParamTreble
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamVolumePostFX [
	controlsParam := self class controlsParamVolumePostFX
]

{ #category : #configuring }
DelugeModKnob >> beControlsParamVolumePostReverbSend [
	controlsParam := self class controlsParamVolumePostReverbSend
]

{ #category : #configuring }
DelugeModKnob >> bePatchAmountFromSourceCompressor [
	patchAmountFromSource := self class patchAmountFromSourceCompressor
]

{ #category : #configuring }
DelugeModKnob >> bePatchAmountFromSourceEnvelope2 [
	patchAmountFromSource := self class patchAmountFromSourceEnvelope2
]

{ #category : #configuring }
DelugeModKnob >> bePatchAmountFromSourceLfo1 [
	patchAmountFromSource := self class patchAmountFromSourceLfo1
]

{ #category : #configuring }
DelugeModKnob >> bePatchAmountFromSourceLfo2 [
	patchAmountFromSource := self class patchAmountFromSourceLfo2
]

{ #category : #accessing }
DelugeModKnob >> controlsParam [
	^ controlsParam
]

{ #category : #accessing }
DelugeModKnob >> controlsParam: anObject [
	controlsParam := anObject
]

{ #category : #'magritte description' }
DelugeModKnob >> descriptionControlsParam [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #controlsParam;
		label: 'controlsParam';
		priority: 2;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeModKnob >> descriptionPatchAmountFromSource [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #patchAmountFromSource;
		label: 'patchAmountFromSource';
		priority: 1;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #comparing }
DelugeModKnob >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ controlsParam hash bitXor: patchAmountFromSource hash
]

{ #category : #accessing }
DelugeModKnob >> patchAmountFromSource [
	^ patchAmountFromSource
]

{ #category : #accessing }
DelugeModKnob >> patchAmountFromSource: anObject [
	patchAmountFromSource := anObject
]
