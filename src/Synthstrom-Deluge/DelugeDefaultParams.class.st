Class {
	#name : #DelugeDefaultParams,
	#superclass : #DelugeObject,
	#instVars : [
		'arpeggiatorGate',
		'arpeggiatorRate',
		'bitCrush',
		'carrier1Feedback',
		'carrier2Feedback',
		'compressorShape',
		'delay',
		'delayFeedback',
		'delayRate',
		'envelope1',
		'envelope2',
		'equalizer',
		'hpf',
		'hpfFrequency',
		'hpfResonance',
		'lfo1Rate',
		'lfo2Rate',
		'lpf',
		'lpfFrequency',
		'lpfResonance',
		'modFXDepth',
		'modFXFeedback',
		'modFXOffset',
		'modFXRate',
		'modulator1Amount',
		'modulator1Feedback',
		'modulator2Amount',
		'modulator2Feedback',
		'noiseVolume',
		'oscAPulseWidth',
		'oscAVolume',
		'oscBPulseWidth',
		'oscBVolume',
		'pan',
		'patchCables',
		'portamento',
		'reverbAmount',
		'sampleRateReduction',
		'stutterRate',
		'volume',
		'oscAPitchAdjust',
		'oscBPitchAdjust',
		'pitchAdjust'
	],
	#category : #'Synthstrom-Deluge'
}

{ #category : #accessing }
DelugeDefaultParams class >> xmlElementName [
	^ 'defaultParams'
]

{ #category : #accessing }
DelugeDefaultParams >> arpeggiatorGate [
	^ arpeggiatorGate
]

{ #category : #accessing }
DelugeDefaultParams >> arpeggiatorGate: anObject [
	arpeggiatorGate := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> arpeggiatorRate [
	^ arpeggiatorRate
]

{ #category : #accessing }
DelugeDefaultParams >> arpeggiatorRate: anObject [
	arpeggiatorRate := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> bitCrush [
	^ bitCrush
]

{ #category : #accessing }
DelugeDefaultParams >> bitCrush: anObject [
	bitCrush := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> carrier1Feedback [
	^ carrier1Feedback
]

{ #category : #accessing }
DelugeDefaultParams >> carrier1Feedback: anObject [
	carrier1Feedback := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> carrier2Feedback [
	^ carrier2Feedback
]

{ #category : #accessing }
DelugeDefaultParams >> carrier2Feedback: anObject [
	carrier2Feedback := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> compressorShape [
	^ compressorShape
]

{ #category : #accessing }
DelugeDefaultParams >> compressorShape: anObject [
	compressorShape := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> delay [
	^ delay
]

{ #category : #accessing }
DelugeDefaultParams >> delay: anObject [
	delay := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> delayFeedback [
	^ delayFeedback
]

{ #category : #accessing }
DelugeDefaultParams >> delayFeedback: anObject [
	delayFeedback := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> delayRate [
	^ delayRate
]

{ #category : #accessing }
DelugeDefaultParams >> delayRate: anObject [
	delayRate := anObject
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionArpeggiatorGate [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #arpeggiatorGate;
		label: 'arpeggiatorGate';
		priority: 11;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionArpeggiatorRate [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #arpeggiatorRate;
		label: 'arpeggiatorRate';
		priority: 6;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionBitCrush [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #bitCrush;
		label: 'bitCrush';
		priority: 18;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionCarrier1Feedback [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #carrier1Feedback;
		label: 'carrier1Feedback';
		priority: 30;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionCarrier2Feedback [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #carrier2Feedback;
		label: 'carrier2Feedback';
		priority: 34;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionCompressorShape [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #compressorShape;
		label: 'compressorShape';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionDelay [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #delay;
		label: 'delay';
		priority: 3;
		classes: { DelugeDelay };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionDelayFeedback [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #delayFeedback;
		label: 'delayFeedback';
		priority: 37;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionDelayRate [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #delayRate;
		label: 'delayRate';
		priority: 4;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionEnvelope1 [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #envelope1;
		label: 'envelope1';
		priority: 21;
		classes: { DelugeEnvelope1 };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionEnvelope2 [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #envelope2;
		label: 'envelope2';
		priority: 12;
		classes: { DelugeEnvelope2 };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionEqualizer [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #equalizer;
		label: 'equalizer';
		priority: 33;
		classes: { DelugeEqualizer };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionHpf [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #hpf;
		label: 'hpf';
		priority: 9;
		classes: { DelugeHpf };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionHpfFrequency [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #hpfFrequency;
		label: 'hpfFrequency';
		priority: 20;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionHpfResonance [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #hpfResonance;
		label: 'hpfResonance';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionLfo1Rate [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #lfo1Rate;
		label: 'lfo1Rate';
		priority: 5;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionLfo2Rate [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #lfo2Rate;
		label: 'lfo2Rate';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionLpf [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #lpf;
		label: 'lpf';
		priority: 14;
		classes: { DelugeLpf };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionLpfFrequency [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #lpfFrequency;
		label: 'lpfFrequency';
		priority: 9;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionLpfResonance [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #lpfResonance;
		label: 'lpfResonance';
		priority: 27;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionModFXDepth [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #modFXDepth;
		label: 'modFXDepth';
		priority: 31;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionModFXFeedback [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #modFXFeedback;
		label: 'modFXFeedback';
		priority: 14;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionModFXOffset [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #modFXOffset;
		label: 'modFXOffset';
		priority: 17;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionModFXRate [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #modFXRate;
		label: 'modFXRate';
		priority: 15;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionModulator1Amount [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #modulator1Amount;
		label: 'modulator1Amount';
		priority: 36;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionModulator1Feedback [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #modulator1Feedback;
		label: 'modulator1Feedback';
		priority: 28;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionModulator2Amount [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #modulator2Amount;
		label: 'modulator2Amount';
		priority: 8;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionModulator2Feedback [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #modulator2Feedback;
		label: 'modulator2Feedback';
		priority: 29;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionNoiseVolume [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #noiseVolume;
		label: 'noiseVolume';
		priority: 10;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionOscAPitchAdjust [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #oscAPitchAdjust;
		label: 'oscAPitchAdjust';
		priority: 27;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionOscAPulseWidth [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #oscAPulseWidth;
		label: 'oscAPulseWidth';
		priority: 24;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionOscAVolume [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #oscAVolume;
		label: 'oscAVolume';
		priority: 35;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionOscBPitchAdjust [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #oscBPitchAdjust;
		label: 'oscBPitchAdjust';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionOscBPulseWidth [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #oscBPulseWidth;
		label: 'oscBPulseWidth';
		priority: 19;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionOscBVolume [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #oscBVolume;
		label: 'oscBVolume';
		priority: 7;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionPan [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #pan;
		label: 'pan';
		priority: 23;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionPatchCables [
	<magritteDescription>
	^ MAToManyRelationDescription new
		accessor: #patchCables;
		label: 'patchCables';
		priority: 22;
		classes: { DelugePatchCable };
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionPitchAdjust [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #pitchAdjust;
		label: 'pitchAdjust';
		priority: 19;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionPortamento [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #portamento;
		label: 'portamento';
		priority: 25;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionReverbAmount [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #reverbAmount;
		label: 'reverbAmount';
		priority: 16;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionSampleRateReduction [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #sampleRateReduction;
		label: 'sampleRateReduction';
		priority: 13;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionStutterRate [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #stutterRate;
		label: 'stutterRate';
		priority: 32;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionVolume [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #volume;
		label: 'volume';
		priority: 26;
		beXmlElement;
		yourself
]

{ #category : #accessing }
DelugeDefaultParams >> envelope1 [
	^ envelope1
]

{ #category : #accessing }
DelugeDefaultParams >> envelope1: anObject [
	envelope1 := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> envelope2 [
	^ envelope2
]

{ #category : #accessing }
DelugeDefaultParams >> envelope2: anObject [
	envelope2 := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> equalizer [
	^ equalizer
]

{ #category : #accessing }
DelugeDefaultParams >> equalizer: anObject [
	equalizer := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> hpf [
	^ hpf
]

{ #category : #accessing }
DelugeDefaultParams >> hpf: anObject [
	hpf := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> hpfFrequency [
	^ hpfFrequency
]

{ #category : #accessing }
DelugeDefaultParams >> hpfFrequency: anObject [
	hpfFrequency := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> hpfResonance [
	^ hpfResonance
]

{ #category : #accessing }
DelugeDefaultParams >> hpfResonance: anObject [
	hpfResonance := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> lfo1Rate [
	^ lfo1Rate
]

{ #category : #accessing }
DelugeDefaultParams >> lfo1Rate: anObject [
	lfo1Rate := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> lfo2Rate [
	^ lfo2Rate
]

{ #category : #accessing }
DelugeDefaultParams >> lfo2Rate: anObject [
	lfo2Rate := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> lpf [
	^ lpf
]

{ #category : #accessing }
DelugeDefaultParams >> lpf: anObject [
	lpf := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> lpfFrequency [
	^ lpfFrequency
]

{ #category : #accessing }
DelugeDefaultParams >> lpfFrequency: anObject [
	lpfFrequency := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> lpfResonance [
	^ lpfResonance
]

{ #category : #accessing }
DelugeDefaultParams >> lpfResonance: anObject [
	lpfResonance := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> modFXDepth [
	^ modFXDepth
]

{ #category : #accessing }
DelugeDefaultParams >> modFXDepth: anObject [
	modFXDepth := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> modFXFeedback [
	^ modFXFeedback
]

{ #category : #accessing }
DelugeDefaultParams >> modFXFeedback: anObject [
	modFXFeedback := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> modFXOffset [
	^ modFXOffset
]

{ #category : #accessing }
DelugeDefaultParams >> modFXOffset: anObject [
	modFXOffset := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> modFXRate [
	^ modFXRate
]

{ #category : #accessing }
DelugeDefaultParams >> modFXRate: anObject [
	modFXRate := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> modulator1Amount [
	^ modulator1Amount
]

{ #category : #accessing }
DelugeDefaultParams >> modulator1Amount: anObject [
	modulator1Amount := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> modulator1Feedback [
	^ modulator1Feedback
]

{ #category : #accessing }
DelugeDefaultParams >> modulator1Feedback: anObject [
	modulator1Feedback := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> modulator2Amount [
	^ modulator2Amount
]

{ #category : #accessing }
DelugeDefaultParams >> modulator2Amount: anObject [
	modulator2Amount := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> modulator2Feedback [
	^ modulator2Feedback
]

{ #category : #accessing }
DelugeDefaultParams >> modulator2Feedback: anObject [
	modulator2Feedback := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> noiseVolume [
	^ noiseVolume
]

{ #category : #accessing }
DelugeDefaultParams >> noiseVolume: anObject [
	noiseVolume := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> oscAPitchAdjust [
	^ oscAPitchAdjust
]

{ #category : #accessing }
DelugeDefaultParams >> oscAPitchAdjust: anObject [
	oscAPitchAdjust := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> oscAPulseWidth [
	^ oscAPulseWidth
]

{ #category : #accessing }
DelugeDefaultParams >> oscAPulseWidth: anObject [
	oscAPulseWidth := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> oscAVolume [
	^ oscAVolume
]

{ #category : #accessing }
DelugeDefaultParams >> oscAVolume: anObject [
	oscAVolume := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> oscBPitchAdjust [
	^ oscBPitchAdjust
]

{ #category : #accessing }
DelugeDefaultParams >> oscBPitchAdjust: anObject [
	oscBPitchAdjust := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> oscBPulseWidth [
	^ oscBPulseWidth
]

{ #category : #accessing }
DelugeDefaultParams >> oscBPulseWidth: anObject [
	oscBPulseWidth := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> oscBVolume [
	^ oscBVolume
]

{ #category : #accessing }
DelugeDefaultParams >> oscBVolume: anObject [
	oscBVolume := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> pan [
	^ pan
]

{ #category : #accessing }
DelugeDefaultParams >> pan: anObject [
	pan := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> patchCables [
	^ patchCables
]

{ #category : #accessing }
DelugeDefaultParams >> patchCables: anObject [
	patchCables := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> pitchAdjust [
	^ pitchAdjust
]

{ #category : #accessing }
DelugeDefaultParams >> pitchAdjust: anObject [
	pitchAdjust := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> portamento [
	^ portamento
]

{ #category : #accessing }
DelugeDefaultParams >> portamento: anObject [
	portamento := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> reverbAmount [
	^ reverbAmount
]

{ #category : #accessing }
DelugeDefaultParams >> reverbAmount: anObject [
	reverbAmount := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> sampleRateReduction [
	^ sampleRateReduction
]

{ #category : #accessing }
DelugeDefaultParams >> sampleRateReduction: anObject [
	sampleRateReduction := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> stutterRate [
	^ stutterRate
]

{ #category : #accessing }
DelugeDefaultParams >> stutterRate: anObject [
	stutterRate := anObject
]

{ #category : #accessing }
DelugeDefaultParams >> volume [
	^ volume
]

{ #category : #accessing }
DelugeDefaultParams >> volume: anObject [
	volume := anObject
]
