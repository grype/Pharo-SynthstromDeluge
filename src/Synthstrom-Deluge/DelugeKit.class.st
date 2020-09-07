Class {
	#name : #DelugeKit,
	#superclass : #DelugeObject,
	#instVars : [
		'currentFilterType',
		'defaultParams',
		'lpfMode',
		'modFXCurrentParam',
		'modFXType',
		'selectedDrumIndex',
		'soundSources',
		'compressor',
		'delay'
	],
	#classVars : [
		'CurrentFilterTypeLpf',
		'LpfMode24dB',
		'ModFXCurrentParamFeedback',
		'ModFXTypeFlanger'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeKit class >> currentFilterTypeLpf [
	^ CurrentFilterTypeLpf ifNil: [ CurrentFilterTypeLpf := 'lpf' ]
]

{ #category : #accessing }
DelugeKit class >> lpfMode24dB [
	^ LpfMode24dB ifNil: [ LpfMode24dB := '24dB' ]
]

{ #category : #accessing }
DelugeKit class >> modFXCurrentParamFeedback [
	^ ModFXCurrentParamFeedback ifNil: [ ModFXCurrentParamFeedback := 'feedback' ]
]

{ #category : #accessing }
DelugeKit class >> modFXTypeFlanger [
	^ ModFXTypeFlanger ifNil: [ ModFXTypeFlanger := 'flanger' ]
]

{ #category : #accessing }
DelugeKit class >> xmlElementName [
	^ 'kit'
]

{ #category : #comparing }
DelugeKit >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ currentFilterType = anObject currentFilterType and: [ 
		  defaultParams = anObject defaultParams and: [ 
			  lpfMode = anObject lpfMode and: [ 
				  modFXCurrentParam = anObject modFXCurrentParam and: [ 
					  modFXType = anObject modFXType and: [ 
						  selectedDrumIndex = anObject selectedDrumIndex and: [ 
							  soundSources = anObject soundSources ] ] ] ] ] ]
]

{ #category : #adding }
DelugeKit >> addSoundSourceFromFile: aFile [
	soundSources add: (DelugeSound fromFile: aFile asFileReference)
]

{ #category : #configuring }
DelugeKit >> beCurrentFilterTypeLpf [
	currentFilterType := self class currentFilterTypeLpf
]

{ #category : #configuring }
DelugeKit >> beLpfMode24dB [
	lpfMode := self class lpfMode24dB
]

{ #category : #configuring }
DelugeKit >> beModFXCurrentParamFeedback [
	modFXCurrentParam := self class modFXCurrentParamFeedback
]

{ #category : #configuring }
DelugeKit >> beModFXTypeFlanger [
	modFXType := self class modFXTypeFlanger
]

{ #category : #accessing }
DelugeKit >> compressor [
	^ compressor
]

{ #category : #accessing }
DelugeKit >> compressor: anObject [
	compressor := anObject
]

{ #category : #accessing }
DelugeKit >> currentFilterType [
	^ currentFilterType
]

{ #category : #accessing }
DelugeKit >> currentFilterType: anObject [
	currentFilterType := anObject
]

{ #category : #accessing }
DelugeKit >> defaultParams [
	^ defaultParams
]

{ #category : #accessing }
DelugeKit >> defaultParams: anObject [
	defaultParams := anObject
]

{ #category : #accessing }
DelugeKit >> delay [
	^ delay
]

{ #category : #accessing }
DelugeKit >> delay: anObject [
	delay := anObject
]

{ #category : #'magritte description' }
DelugeKit >> descriptionCompressor [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #compressor;
		label: 'compressor';
		priority: 2;
		classes: { DelugeCompressor };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeKit >> descriptionCurrentFilterType [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #currentFilterType;
		label: 'currentFilterType';
		priority: 4;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeKit >> descriptionDefaultParams [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #defaultParams;
		label: 'defaultParams';
		priority: 2;
		classes: { DelugeDefaultParams };
		beXmlInlineElement;
		yourself
]

{ #category : #'magritte description' }
DelugeKit >> descriptionDelay [
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
DelugeKit >> descriptionLpfMode [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #lpfMode;
		label: 'lpfMode';
		priority: 6;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeKit >> descriptionModFXCurrentParam [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #modFXCurrentParam;
		label: 'modFXCurrentParam';
		priority: 1;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeKit >> descriptionModFXType [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #modFXType;
		label: 'modFXType';
		priority: 5;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeKit >> descriptionSelectedDrumIndex [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #selectedDrumIndex;
		label: 'selectedDrumIndex';
		priority: 7;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #'magritte description' }
DelugeKit >> descriptionSoundSources [
	<magritteDescription>
	^ MAToManyRelationDescription new
		accessor: #soundSources;
		label: 'soundSources';
		priority: 3;
		classes: { DelugeSound };
		beXmlElement;
		yourself
]

{ #category : #comparing }
DelugeKit >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ currentFilterType hash bitXor:
		  (defaultParams hash bitXor: (lpfMode hash bitXor:
				    (modFXCurrentParam hash bitXor: (modFXType hash bitXor:
						      (selectedDrumIndex hash bitXor: soundSources hash)))))
]

{ #category : #initialization }
DelugeKit >> initialize [
	super initialize.
	self
		beCurrentFilterTypeLpf;
		beLpfMode24dB;
		beModFXCurrentParamFeedback;
		beModFXTypeFlanger;
		compressor: (DelugeCompressor new
				 syncLevel: 7;
				 attack: 327244;
				 release: 936;
				 yourself);
		soundSources: OrderedCollection new;
		delay: (DelugeDelay new
				 pingPong: 1;
				 analog: 0;
				 syncLevel: 8;
				 yourself).
	defaultParams := DelugeDefaultParams new
		                 bitCrush: 1 / 2;
		                 pan: 0;
		                 delay: (DelugeDelay new
				                  feedback: 1 / 2;
				                  rate: 0;
				                  yourself);
		                 equalizer: DelugeEqualizer new;
		                 hpf: (DelugeHpf new
				                  frequency: 1 / 2;
				                  resonance: 1 / 2;
				                  yourself);
		                 lpf: (DelugeLpf new
				                  frequency: 2147483647 / 4294967296;
				                  resonance: 1 / 2;
				                  yourself);
		                 modFXFeedback: 1 / 2;
		                 modFXOffset: 0;
		                 modFXRate: 7 / 8;
		                 modFXDepth: 0;
		                 reverbAmount: 1 / 2;
		                 sampleRateReduction: 1 / 2;
		                 stutterRate: 0;
		                 volume: 222379213 / 1073741824;
		                 sidechainCompressorShape: 1846835929 / 2147483648;
		                 yourself
]

{ #category : #accessing }
DelugeKit >> lpfMode [
	^ lpfMode
]

{ #category : #accessing }
DelugeKit >> lpfMode: anObject [
	lpfMode := anObject
]

{ #category : #accessing }
DelugeKit >> modFXCurrentParam [
	^ modFXCurrentParam
]

{ #category : #accessing }
DelugeKit >> modFXCurrentParam: anObject [
	modFXCurrentParam := anObject
]

{ #category : #accessing }
DelugeKit >> modFXType [
	^ modFXType
]

{ #category : #accessing }
DelugeKit >> modFXType: anObject [
	modFXType := anObject
]

{ #category : #accessing }
DelugeKit >> selectedDrumIndex [
	^ selectedDrumIndex
]

{ #category : #accessing }
DelugeKit >> selectedDrumIndex: anObject [
	selectedDrumIndex := anObject
]

{ #category : #accessing }
DelugeKit >> soundSources [
	^ soundSources
]

{ #category : #accessing }
DelugeKit >> soundSources: anObject [
	soundSources := anObject
]
