Class {
	#name : #DelugeSound,
	#superclass : #DelugeObject,
	#instVars : [
		'clippingAmount',
		'compressor',
		'defaultParams',
		'delay',
		'lfo1',
		'lfo2',
		'lpfMode',
		'midiKnobs',
		'modFXType',
		'modKnobs',
		'mode',
		'name',
		'osc1',
		'osc2',
		'polyphonic',
		'sideChainSend',
		'unison',
		'voicePriority',
		'arpeggiator',
		'modulator1',
		'modulator2',
		'oscillatorReset',
		'transpose'
	],
	#classVars : [
		'LpfMode12dB',
		'LpfMode24dB',
		'LpfMode24dBDrive',
		'MidiKnobsEmpty',
		'ModFXTypeChorus',
		'ModFXTypeFlanger',
		'ModFXTypeNone',
		'ModFXTypePhaser',
		'ModeFm',
		'ModeRingmod',
		'ModeSubtractive',
		'PolyphonicAuto',
		'PolyphonicLegato',
		'PolyphonicMono',
		'PolyphonicPoly'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #'instance creation' }
DelugeSound class >> fromFile: aFilenameOrReference [
	| file |

	file := aFilenameOrReference asFileReference.
	^ self new
		  bePolyphonicAuto;
		  beLpfMode24dB;
		  beModeSubtractive;
		  voicePriority: 1;
		  name: file withoutExtension basename;
		  osc1: (DelugeOsc1 fromFile: aFilenameOrReference);
		  osc2: (DelugeOsc2 new
				   beTypeSample;
				   yourself);
		  yourself
]

{ #category : #accessing }
DelugeSound class >> lpfMode12dB [
	^ LpfMode12dB ifNil: [ LpfMode12dB := '12dB' ]
]

{ #category : #accessing }
DelugeSound class >> lpfMode24dB [
	^ LpfMode24dB ifNil: [ LpfMode24dB := '24dB' ]
]

{ #category : #accessing }
DelugeSound class >> lpfMode24dBDrive [
	^ LpfMode24dBDrive ifNil: [ LpfMode24dBDrive := '24dBDrive' ]
]

{ #category : #accessing }
DelugeSound class >> midiKnobsEmpty [
	^ MidiKnobsEmpty ifNil: [ MidiKnobsEmpty := '
	' ]
]

{ #category : #accessing }
DelugeSound class >> modFXTypeChorus [
	^ ModFXTypeChorus ifNil: [ ModFXTypeChorus := 'chorus' ]
]

{ #category : #accessing }
DelugeSound class >> modFXTypeFlanger [
	^ ModFXTypeFlanger ifNil: [ ModFXTypeFlanger := 'flanger' ]
]

{ #category : #accessing }
DelugeSound class >> modFXTypeNone [
	^ ModFXTypeNone ifNil: [ ModFXTypeNone := 'none' ]
]

{ #category : #accessing }
DelugeSound class >> modFXTypePhaser [
	^ ModFXTypePhaser ifNil: [ ModFXTypePhaser := 'phaser' ]
]

{ #category : #accessing }
DelugeSound class >> modeFm [
	^ ModeFm ifNil: [ ModeFm := 'fm' ]
]

{ #category : #accessing }
DelugeSound class >> modeRingmod [
	^ ModeRingmod ifNil: [ ModeRingmod := 'ringmod' ]
]

{ #category : #accessing }
DelugeSound class >> modeSubtractive [
	^ ModeSubtractive ifNil: [ ModeSubtractive := 'subtractive' ]
]

{ #category : #accessing }
DelugeSound class >> polyphonicAuto [
	^ PolyphonicAuto ifNil: [ PolyphonicAuto := 'auto' ]
]

{ #category : #accessing }
DelugeSound class >> polyphonicLegato [
	^ PolyphonicLegato ifNil: [ PolyphonicLegato := 'legato' ]
]

{ #category : #accessing }
DelugeSound class >> polyphonicMono [
	^ PolyphonicMono ifNil: [ PolyphonicMono := 'mono' ]
]

{ #category : #accessing }
DelugeSound class >> polyphonicPoly [
	^ PolyphonicPoly ifNil: [ PolyphonicPoly := 'poly' ]
]

{ #category : #accessing }
DelugeSound class >> xmlElementName [
	^ 'sound'
]

{ #category : #comparing }
DelugeSound >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ arpeggiator = anObject arpeggiator and: [ 
		  clippingAmount = anObject clippingAmount and: [ 
			  compressor = anObject compressor and: [ 
				  defaultParams = anObject defaultParams and: [ 
					  delay = anObject delay and: [ 
						  lfo1 = anObject lfo1 and: [ 
							  lfo2 = anObject lfo2 and: [ 
								  lpfMode = anObject lpfMode and: [ 
									  midiKnobs = anObject midiKnobs and: [ 
										  modFXType = anObject modFXType and: [ 
											  modKnobs = anObject modKnobs and: [ 
												  mode = anObject mode and: [ 
													  modulator1 = anObject modulator1 and: [ 
														  modulator2 = anObject modulator2 and: [ 
															  name = anObject name and: [ 
																  osc1 = anObject osc1 and: [ 
																	  osc2 = anObject osc2 and: [ 
																		  oscillatorReset = anObject oscillatorReset and: [ 
																			  polyphonic = anObject polyphonic and: [ 
																				  sideChainSend = anObject sideChainSend and: [ 
																					  transpose = anObject transpose and: [ 
																						  unison = anObject unison and: [ 
																							  voicePriority = anObject voicePriority ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ]
]

{ #category : #accessing }
DelugeSound >> arpeggiator [
	^ arpeggiator
]

{ #category : #accessing }
DelugeSound >> arpeggiator: anObject [
	arpeggiator := anObject
]

{ #category : #configuring }
DelugeSound >> beLpfMode12dB [
	lpfMode := self class lpfMode12dB
]

{ #category : #configuring }
DelugeSound >> beLpfMode24dB [
	lpfMode := self class lpfMode24dB
]

{ #category : #configuring }
DelugeSound >> beLpfMode24dBDrive [
	lpfMode := self class lpfMode24dBDrive
]

{ #category : #configuring }
DelugeSound >> beMidiKnobsEmpty [
	midiKnobs := self class midiKnobsEmpty
]

{ #category : #configuring }
DelugeSound >> beModFXTypeChorus [
	modFXType := self class modFXTypeChorus
]

{ #category : #configuring }
DelugeSound >> beModFXTypeFlanger [
	modFXType := self class modFXTypeFlanger
]

{ #category : #configuring }
DelugeSound >> beModFXTypeNone [
	modFXType := self class modFXTypeNone
]

{ #category : #configuring }
DelugeSound >> beModFXTypePhaser [
	modFXType := self class modFXTypePhaser
]

{ #category : #configuring }
DelugeSound >> beModeFm [
	mode := self class modeFm
]

{ #category : #configuring }
DelugeSound >> beModeRingmod [
	mode := self class modeRingmod
]

{ #category : #configuring }
DelugeSound >> beModeSubtractive [
	mode := self class modeSubtractive
]

{ #category : #configuring }
DelugeSound >> bePolyphonicAuto [
	polyphonic := self class polyphonicAuto
]

{ #category : #configuring }
DelugeSound >> bePolyphonicLegato [
	polyphonic := self class polyphonicLegato
]

{ #category : #configuring }
DelugeSound >> bePolyphonicMono [
	polyphonic := self class polyphonicMono
]

{ #category : #configuring }
DelugeSound >> bePolyphonicPoly [
	polyphonic := self class polyphonicPoly
]

{ #category : #accessing }
DelugeSound >> clippingAmount [
	^ clippingAmount
]

{ #category : #accessing }
DelugeSound >> clippingAmount: anObject [
	clippingAmount := anObject
]

{ #category : #accessing }
DelugeSound >> compressor [
	^ compressor
]

{ #category : #accessing }
DelugeSound >> compressor: anObject [
	compressor := anObject
]

{ #category : #accessing }
DelugeSound >> defaultParams [
	^ defaultParams
]

{ #category : #accessing }
DelugeSound >> defaultParams: anObject [
	defaultParams := anObject
]

{ #category : #accessing }
DelugeSound >> delay [
	^ delay
]

{ #category : #accessing }
DelugeSound >> delay: anObject [
	delay := anObject
]

{ #category : #'magritte description' }
DelugeSound >> descriptionArpeggiator [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #arpeggiator;
		label: 'arpeggiator';
		priority: 5;
		classes: { DelugeArpeggiator };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionClippingAmount [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #clippingAmount;
		label: 'clippingAmount';
		priority: 10;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionCompressor [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #compressor;
		label: 'compressor';
		priority: 15;
		classes: { DelugeCompressor };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionDefaultParams [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #defaultParams;
		label: 'defaultParams';
		priority: 1;
		classes: { DelugeDefaultParams };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionDelay [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #delay;
		label: 'delay';
		priority: 4;
		classes: { DelugeDelay };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionLfo1 [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #lfo1;
		label: 'lfo1';
		priority: 18;
		classes: { DelugeLfo1 };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionLfo2 [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #lfo2;
		label: 'lfo2';
		priority: 14;
		classes: { DelugeLfo2 };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionLpfMode [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #lpfMode;
		label: 'lpfMode';
		priority: 3;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionMidiKnobs [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #midiKnobs;
		label: 'midiKnobs';
		priority: 12;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionModFXType [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #modFXType;
		label: 'modFXType';
		priority: 8;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionModKnobs [
	<magritteDescription>
	^ MAToManyRelationDescription new
		accessor: #modKnobs;
		label: 'modKnobs';
		priority: 13;
		classes: { DelugeModKnob };
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionMode [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #mode;
		label: 'mode';
		priority: 17;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionModulator1 [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #modulator1;
		label: 'modulator1';
		priority: 9;
		classes: { DelugeModulator1 };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionModulator2 [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #modulator2;
		label: 'modulator2';
		priority: 4;
		classes: { DelugeModulator2 };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionName [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #name;
		label: 'name';
		priority: 2;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionOsc1 [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #osc1;
		label: 'osc1';
		priority: 11;
		classes: { DelugeOsc1 };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionOsc2 [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #osc2;
		label: 'osc2';
		priority: 7;
		classes: { DelugeOsc2 };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionOscillatorReset [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #oscillatorReset;
		label: 'oscillatorReset';
		priority: 16;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionPolyphonic [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #polyphonic;
		label: 'polyphonic';
		priority: 6;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionSideChainSend [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #sideChainSend;
		label: 'sideChainSend';
		priority: 5;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionTranspose [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #transpose;
		label: 'transpose';
		priority: 16;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionUnison [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #unison;
		label: 'unison';
		priority: 16;
		classes: { DelugeUnison };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionVoicePriority [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #voicePriority;
		label: 'voicePriority';
		priority: 9;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #comparing }
DelugeSound >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ arpeggiator hash bitXor:
		  (clippingAmount hash bitXor: (compressor hash bitXor:
				    (defaultParams hash bitXor:
					     (delay hash bitXor: (lfo1 hash bitXor:
							       (lfo2 hash bitXor:
								        (lpfMode hash bitXor: (midiKnobs hash bitXor:
										          (modFXType hash bitXor:
											           (modKnobs hash bitXor: (mode hash bitXor:
													             (modulator1 hash bitXor:
														              (modulator2 hash bitXor:
															               (name hash bitXor:
																                (osc1 hash bitXor:
																	                 (osc2 hash bitXor:
																		                  (oscillatorReset hash bitXor:
																			                   (polyphonic hash bitXor:
																				                    (sideChainSend hash bitXor:
																					                     (transpose hash bitXor:
																						                      (unison hash bitXor:
																							                       voicePriority hash)))))))))))))))))))))
]

{ #category : #initialization }
DelugeSound >> initialize [
	super initialize.
	self
		beLpfMode24dB;
		beModFXTypeNone;
		beModeSubtractive;
		bePolyphonicAuto;
		voicePriority: 1;
		arpeggiator: (DelugeArpeggiator new
				 beModeOff;
				 numOctaves: 2;
				 syncLevel: 7;
				 yourself).

	modKnobs := { 
		            (DelugeModKnob new
			             beControlsParamPan;
			             yourself).
		            (DelugeModKnob new
			             beControlsParamVolumePostFX;
			             yourself).
		            (DelugeModKnob new
			             beControlsParamLpfResonance;
			             yourself).
		            (DelugeModKnob new
			             beControlsParamLpfFrequency;
			             yourself).
		            (DelugeModKnob new
			             beControlsParamEnv1Release;
			             yourself).
		            (DelugeModKnob new
			             beControlsParamEnv1Attack;
			             yourself).
		            (DelugeModKnob new
			             beControlsParamDelayFeedback;
			             yourself).
		            (DelugeModKnob new
			             beControlsParamDelayRate;
			             yourself).
		            (DelugeModKnob new
			             beControlsParamReverbAmount;
			             yourself).
		            (DelugeModKnob new
			             beControlsParamVolumePostReverbSend;
			             bePatchAmountFromSourceLfo1;
			             yourself).
		            (DelugeModKnob new
			             beControlsParamLfo1Rate;
			             yourself).
		            (DelugeModKnob new
			             beControlsParamPitch;
			             yourself).
		            (DelugeModKnob new
			             beControlsParamStutterRate;
			             yourself).
		            (DelugeModKnob new
			             beControlsParamBitcrushAmount;
			             yourself).
		            (DelugeModKnob new
			             beControlsParamSampleRateReduction;
			             yourself) }.
	defaultParams := DelugeDefaultParams new
		                 arpeggiatorGate: 0;
		                 arpeggiatorRate: 0;
		                 bitCrush: 1 / 2;
		                 carrier1Feedback: 1 / 2;
		                 carrier2Feedback: 1 / 2;
		                 compressorShape: 1846835929 / 2147483648;
		                 delayFeedback: 1 / 2;
		                 delayRate: 0;
		                 envelope1: (DelugeEnvelope1 new
				                  attack: 1 / 2;
				                  decay: 966367637 / 1073741824;
				                  release: 1 / 2;
				                  sustain: 1073741801 / 2147483648;
				                  yourself);
		                 envelope2: (DelugeEnvelope2 new
				                  attack: 966367637 / 1073741824;
				                  decay: 966367637 / 1073741824;
				                  release: 966367637 / 1073741824;
				                  sustain: 4294967273 / 4294967296;
				                  yourself);
		                 equalizer: DelugeEqualizer new;
		                 hpfFrequency: 1 / 2;
		                 hpfResonance: 1 / 2;
		                 lfo1Rate: 214748351 / 2147483648;
		                 lfo2Rate: 0;
		                 lpfFrequency: 2147483647 / 4294967296;
		                 lpfResonance: 1 / 2;
		                 modFXDepth: 0;
		                 modFXFeedback: 0;
		                 modFXOffset: 0;
		                 modFXRate: 0;
		                 modulator1Amount: 1 / 2;
		                 modulator1Feedback: 1 / 2;
		                 modulator2Amount: 1 / 2;
		                 modulator2Feedback: 1 / 2;
		                 noiseVolume: 1 / 2;
		                 oscAPulseWidth: 0;
		                 oscAVolume: 2147483647 / 4294967296;
		                 oscBPulseWidth: 0;
		                 oscBVolume: 1 / 2;
		                 pan: 0;
		                 patchCables: { (DelugePatchCable new
				                  beSourceVelocity;
				                  beDestinationVolume;
				                  amount: 134217725 / 536870912;
				                  yourself) };
		                 portamento: 1 / 2;
		                 reverbAmount: 1 / 2;
		                 sampleRateReduction: 1 / 2;
		                 stutterRate: 0;
		                 volume: 161061269 / 536870912;
		                 yourself
]

{ #category : #accessing }
DelugeSound >> lfo1 [
	^ lfo1
]

{ #category : #accessing }
DelugeSound >> lfo1: anObject [
	lfo1 := anObject
]

{ #category : #accessing }
DelugeSound >> lfo2 [
	^ lfo2
]

{ #category : #accessing }
DelugeSound >> lfo2: anObject [
	lfo2 := anObject
]

{ #category : #accessing }
DelugeSound >> lpfMode [
	^ lpfMode
]

{ #category : #accessing }
DelugeSound >> lpfMode: anObject [
	lpfMode := anObject
]

{ #category : #accessing }
DelugeSound >> midiKnobs [
	^ midiKnobs
]

{ #category : #accessing }
DelugeSound >> midiKnobs: anObject [
	midiKnobs := anObject
]

{ #category : #accessing }
DelugeSound >> modFXType [
	^ modFXType
]

{ #category : #accessing }
DelugeSound >> modFXType: anObject [
	modFXType := anObject
]

{ #category : #accessing }
DelugeSound >> modKnobs [
	^ modKnobs
]

{ #category : #accessing }
DelugeSound >> modKnobs: anObject [
	modKnobs := anObject
]

{ #category : #accessing }
DelugeSound >> mode [
	^ mode
]

{ #category : #accessing }
DelugeSound >> mode: anObject [
	mode := anObject
]

{ #category : #accessing }
DelugeSound >> modulator1 [
	^ modulator1
]

{ #category : #accessing }
DelugeSound >> modulator1: anObject [
	modulator1 := anObject
]

{ #category : #accessing }
DelugeSound >> modulator2 [
	^ modulator2
]

{ #category : #accessing }
DelugeSound >> modulator2: anObject [
	modulator2 := anObject
]

{ #category : #accessing }
DelugeSound >> name [
	^ name
]

{ #category : #accessing }
DelugeSound >> name: anObject [
	name := anObject
]

{ #category : #accessing }
DelugeSound >> osc1 [
	^ osc1
]

{ #category : #accessing }
DelugeSound >> osc1: anObject [
	osc1 := anObject
]

{ #category : #accessing }
DelugeSound >> osc2 [
	^ osc2
]

{ #category : #accessing }
DelugeSound >> osc2: anObject [
	osc2 := anObject
]

{ #category : #accessing }
DelugeSound >> oscillatorReset [
	^ oscillatorReset
]

{ #category : #accessing }
DelugeSound >> oscillatorReset: anObject [
	oscillatorReset := anObject
]

{ #category : #accessing }
DelugeSound >> polyphonic [
	^ polyphonic
]

{ #category : #accessing }
DelugeSound >> polyphonic: anObject [
	polyphonic := anObject
]

{ #category : #accessing }
DelugeSound >> sideChainSend [
	^ sideChainSend
]

{ #category : #accessing }
DelugeSound >> sideChainSend: anObject [
	sideChainSend := anObject
]

{ #category : #accessing }
DelugeSound >> transpose [
	^ transpose
]

{ #category : #accessing }
DelugeSound >> transpose: anObject [
	transpose := anObject
]

{ #category : #accessing }
DelugeSound >> unison [
	^ unison
]

{ #category : #accessing }
DelugeSound >> unison: anObject [
	unison := anObject
]

{ #category : #accessing }
DelugeSound >> voicePriority [
	^ voicePriority
]

{ #category : #accessing }
DelugeSound >> voicePriority: anObject [
	voicePriority := anObject
]
