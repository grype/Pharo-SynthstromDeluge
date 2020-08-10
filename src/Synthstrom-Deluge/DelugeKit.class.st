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
		'soundSources'
	],
	#classVars : [
		'CurrentFilterTypeEq',
		'CurrentFilterTypeLpf',
		'LpfMode24dB',
		'ModFXCurrentParamFeedback',
		'ModFXTypeFlanger'
	],
	#category : #'Synthstrom-Deluge'
}

{ #category : #accessing }
DelugeKit class >> currentFilterTypeEq [
	^ CurrentFilterTypeEq ifNil: [ CurrentFilterTypeEq := 'eq' ]
]

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

{ #category : #configuring }
DelugeKit >> beCurrentFilterTypeEq [
	currentFilterType := self class currentFilterTypeEq
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
	^ MAToManyRelationDescription new
		accessor: #compressor;
		label: 'compressor';
		priority: 2;
		classes: { DelugeSyncLevel };
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeKit >> descriptionCurrentFilterType [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #currentFilterType;
		label: 'currentFilterType';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeKit >> descriptionDefaultParams [
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #defaultParams;
		label: 'defaultParams';
		priority: 4;
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
		priority: 7;
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
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeKit >> descriptionModFXCurrentParam [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #modFXCurrentParam;
		label: 'modFXCurrentParam';
		priority: 6;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeKit >> descriptionModFXType [
	<magritteDescription>
	^ MAStringDescription new
		accessor: #modFXType;
		label: 'modFXType';
		priority: 7;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeKit >> descriptionSelectedDrumIndex [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #selectedDrumIndex;
		label: 'selectedDrumIndex';
		priority: 5;
		beXmlElement;
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
