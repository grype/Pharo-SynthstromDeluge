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
		'oscBPitchAdjust'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeDefaultParams class >> xmlElementName [
	^ 'defaultParams'
]

{ #category : #comparing }
DelugeDefaultParams >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ volume = anObject volume and: [ 
		  arpeggiatorGate = anObject arpeggiatorGate and: [ 
			  arpeggiatorRate = anObject arpeggiatorRate and: [ 
				  bitCrush = anObject bitCrush and: [ 
					  carrier1Feedback = anObject carrier1Feedback and: [ 
						  carrier2Feedback = anObject carrier2Feedback and: [ 
							  compressorShape = anObject compressorShape and: [ 
								  delay = anObject delay and: [ 
									  delayFeedback = anObject delayFeedback and: [ 
										  delayRate = anObject delayRate and: [ 
											  envelope1 = anObject envelope1 and: [ 
												  envelope2 = anObject envelope2 and: [ 
													  equalizer = anObject equalizer and: [ 
														  hpf = anObject hpf and: [ 
															  hpfFrequency = anObject hpfFrequency and: [ 
																  hpfResonance = anObject hpfResonance and: [ 
																	  lfo1Rate = anObject lfo1Rate and: [ 
																		  lfo2Rate = anObject lfo2Rate and: [ 
																			  lpf = anObject lpf and: [ 
																				  lpfFrequency = anObject lpfFrequency and: [ 
																					  lpfResonance = anObject lpfResonance and: [ 
																						  modFXDepth = anObject modFXDepth and: [ 
																							  modFXFeedback = anObject modFXFeedback and: [ 
																								  modFXOffset = anObject modFXOffset and: [ 
																									  modFXRate = anObject modFXRate and: [ 
																										  modulator1Amount
																										  = anObject modulator1Amount and: [ 
																											  modulator1Feedback
																											  = anObject modulator1Feedback and: [ 
																												  modulator2Amount
																												  = anObject modulator2Amount and: [ 
																													  modulator2Feedback
																													  = anObject modulator2Feedback and: [ 
																														  noiseVolume = anObject noiseVolume 
																															  and: [ 
																																  oscAPitchAdjust
																																  = anObject oscAPitchAdjust and: [ 
																																	  oscAPulseWidth
																																	  = anObject oscAPulseWidth and: [ 
																																		  oscAVolume = anObject oscAVolume 
																																			  and: [ 
																																				  oscBPitchAdjust
																																				  = anObject oscBPitchAdjust and: [ 
																																					  oscBPulseWidth
																																					  = anObject oscBPulseWidth and: [ 
																																						  oscBVolume
																																						  = anObject oscBVolume and: [ 
																																							  pan = anObject pan and: [ 
																																								  patchCables
																																								  = anObject patchCables and: [ 
																																									  portamento
																																									  = anObject portamento and: [ 
																																										  reverbAmount
																																										  = anObject reverbAmount 
																																											  and: [ 
																																												  sampleRateReduction
																																												  =
																																												  anObject
																																													  sampleRateReduction 
																																													  and: [ 
																																													  stutterRate
																																													  = anObject stutterRate ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ] ]
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
	^ DelugeHexDescription new
		accessor: #arpeggiatorGate;
		label: 'arpeggiatorGate';
		priority: 5;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionArpeggiatorRate [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #arpeggiatorRate;
		label: 'arpeggiatorRate';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionBitCrush [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #bitCrush;
		label: 'bitCrush';
		priority: 27;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionCarrier1Feedback [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #carrier1Feedback;
		label: 'carrier1Feedback';
		priority: 24;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionCarrier2Feedback [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #carrier2Feedback;
		label: 'carrier2Feedback';
		priority: 26;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionCompressorShape [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #compressorShape;
		label: 'compressorShape';
		priority: 31;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionDelay [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #delay;
		label: 'delay';
		priority: 2;
		classes: { DelugeDelay };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionDelayFeedback [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #delayFeedback;
		label: 'delayFeedback';
		priority: 25;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionDelayRate [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #delayRate;
		label: 'delayRate';
		priority: 34;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionEnvelope1 [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #envelope1;
		label: 'envelope1';
		priority: 11;
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
		priority: 1;
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
		priority: 15;
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
		priority: 4;
		classes: { DelugeHpf };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionHpfFrequency [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #hpfFrequency;
		label: 'hpfFrequency';
		priority: 13;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionHpfResonance [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #hpfResonance;
		label: 'hpfResonance';
		priority: 33;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionLfo1Rate [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #lfo1Rate;
		label: 'lfo1Rate';
		priority: 20;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionLfo2Rate [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #lfo2Rate;
		label: 'lfo2Rate';
		priority: 18;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionLpf [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #lpf;
		label: 'lpf';
		priority: 8;
		classes: { DelugeLpf };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionLpfFrequency [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #lpfFrequency;
		label: 'lpfFrequency';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionLpfResonance [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #lpfResonance;
		label: 'lpfResonance';
		priority: 19;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionModFXDepth [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #modFXDepth;
		label: 'modFXDepth';
		priority: 28;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionModFXFeedback [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #modFXFeedback;
		label: 'modFXFeedback';
		priority: 9;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionModFXOffset [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #modFXOffset;
		label: 'modFXOffset';
		priority: 30;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionModFXRate [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #modFXRate;
		label: 'modFXRate';
		priority: 6;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionModulator1Amount [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #modulator1Amount;
		label: 'modulator1Amount';
		priority: 29;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionModulator1Feedback [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #modulator1Feedback;
		label: 'modulator1Feedback';
		priority: 17;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionModulator2Amount [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #modulator2Amount;
		label: 'modulator2Amount';
		priority: 7;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionModulator2Feedback [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #modulator2Feedback;
		label: 'modulator2Feedback';
		priority: 22;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionNoiseVolume [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #noiseVolume;
		label: 'noiseVolume';
		priority: 23;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionOscAPitchAdjust [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #oscAPitchAdjust;
		label: 'oscAPitchAdjust';
		priority: 33;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionOscAPulseWidth [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #oscAPulseWidth;
		label: 'oscAPulseWidth';
		priority: 16;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionOscAVolume [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #oscAVolume;
		label: 'oscAVolume';
		priority: 35;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionOscBPitchAdjust [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #oscBPitchAdjust;
		label: 'oscBPitchAdjust';
		priority: 10;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionOscBPulseWidth [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #oscBPulseWidth;
		label: 'oscBPulseWidth';
		priority: 10;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionOscBVolume [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #oscBVolume;
		label: 'oscBVolume';
		priority: 12;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionPan [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #pan;
		label: 'pan';
		priority: 36;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionPatchCables [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #patchCables;
		label: 'patchCables';
		priority: 37;
		classes: { DelugePatchCables };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionPortamento [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #portamento;
		label: 'portamento';
		priority: 32;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionReverbAmount [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #reverbAmount;
		label: 'reverbAmount';
		priority: 8;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionSampleRateReduction [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #sampleRateReduction;
		label: 'sampleRateReduction';
		priority: 21;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionStutterRate [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #stutterRate;
		label: 'stutterRate';
		priority: 4;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeDefaultParams >> descriptionVolume [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #volume;
		label: 'volume';
		priority: 14;
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

{ #category : #comparing }
DelugeDefaultParams >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ volume hash bitXor:
		  (arpeggiatorGate hash bitXor: (arpeggiatorRate hash bitXor:
				    (bitCrush hash bitXor: (carrier1Feedback hash bitXor:
						      (carrier2Feedback hash bitXor:
							       (compressorShape hash bitXor:
								        (delay hash bitXor: (delayFeedback hash bitXor:
										          (delayRate hash bitXor: (envelope1 hash bitXor:
												            (envelope2 hash bitXor:
													             (equalizer hash bitXor: (hpf hash bitXor:
															               (hpfFrequency hash bitXor:
																                (hpfResonance hash bitXor:
																	                 (lfo1Rate hash bitXor:
																		                  (lfo2Rate hash bitXor:
																			                   (lpf hash bitXor:
																				                    (lpfFrequency hash bitXor:
																					                     (lpfResonance hash bitXor:
																						                      (modFXDepth hash bitXor:
																							                       (modFXFeedback hash 
																								                        bitXor:
																									                        (modFXOffset hash 
																										                         bitXor:
																											                         (modFXRate hash 
																												                          bitXor:
																													                          (modulator1Amount
																														                           hash bitXor:
																														                           (modulator1Feedback
																															                            hash 
																															                            bitXor:
																																                            (modulator2Amount
																																	                             hash 
																																	                             bitXor:
																																		                             (modulator2Feedback
																																			                              hash 
																																			                              bitXor:
																																				                              (noiseVolume
																																					                               hash 
																																					                               bitXor:
																																						                               (oscAPitchAdjust
																																							                                hash 
																																							                                bitXor:
																																								                                (oscAPulseWidth
																																									                                 hash 
																																									                                 bitXor:
																																										                                 (oscAVolume
																																											                                  hash 
																																											                                  bitXor:
																																												                                  (oscBPitchAdjust
																																													                                   hash 
																																													                                   bitXor:
																																														                                   (oscBPulseWidth
																																															                                    hash 
																																															                                    bitXor:
																																																                                    (oscBVolume
																																																	                                     hash 
																																																	                                     bitXor:
																																																		                                     (pan
																																																			                                      hash 
																																																			                                      bitXor:
																																																				                                      (patchCables
																																																					                                       hash 
																																																					                                       bitXor:
																																																						                                       (portamento
																																																							                                        hash 
																																																							                                        bitXor:
																																																								                                        (reverbAmount
																																																									                                         hash 
																																																									                                         bitXor:
																																																									                                         (sampleRateReduction
																																																										                                          hash 
																																																										                                          bitXor:
																																																										                                          stutterRate
																																																											                                          hash))))))))))))))))))))))))))))))))))))))))
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
