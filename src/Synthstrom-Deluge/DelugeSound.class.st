Class {
	#name : #DelugeSound,
	#superclass : #DelugeObject,
	#instVars : [
		'arpeggiator',
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
		'osc1',
		'osc2',
		'polyphonic',
		'unison',
		'voicePriority'
	],
	#category : #'Synthstrom-Deluge'
}

{ #category : #accessing }
DelugeSound class >> xmlElementName [
	^ 'sound'
]

{ #category : #accessing }
DelugeSound >> arpeggiator [
	^ arpeggiator
]

{ #category : #accessing }
DelugeSound >> arpeggiator: anObject [
	arpeggiator := anObject
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
		priority: 10;
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
		priority: 16;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionCompressor [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #compressor;
		label: 'compressor';
		priority: 14;
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
		priority: 12;
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
		priority: 15;
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
		priority: 9;
		classes: { DelugeLfo1 };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionLfo2 [
	<magritteDescription>
	^ MAToManyRelationDescription new
		accessor: #lfo2;
		label: 'lfo2';
		priority: 4;
		classes: { DelugeType };
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionLpfMode [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #lpfMode;
		label: 'lpfMode';
		priority: 11;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionMidiKnobs [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #midiKnobs;
		label: 'midiKnobs';
		priority: 6;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionModFXType [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #modFXType;
		label: 'modFXType';
		priority: 17;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionModKnobs [
	<magritteDescription>
	^ MAToManyRelationDescription new
		accessor: #modKnobs;
		label: 'modKnobs';
		priority: 3;
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
		priority: 7;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionModulator1 [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #modulator1;
		label: 'modulator1';
		priority: 13;
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
		priority: 11;
		classes: { DelugeModulator2 };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionOsc1 [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #osc1;
		label: 'osc1';
		priority: 2;
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
		priority: 13;
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
		priority: 15;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionPolyphonic [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #polyphonic;
		label: 'polyphonic';
		priority: 8;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionTranspose [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #transpose;
		label: 'transpose';
		priority: 5;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeSound >> descriptionUnison [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #unison;
		label: 'unison';
		priority: 1;
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
		priority: 5;
		beXmlElement;
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
