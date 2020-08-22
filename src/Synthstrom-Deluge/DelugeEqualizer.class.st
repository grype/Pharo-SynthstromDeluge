Class {
	#name : #DelugeEqualizer,
	#superclass : #DelugeObject,
	#instVars : [
		'bass',
		'bassFrequency',
		'treble',
		'trebleFrequency'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeEqualizer class >> xmlElementName [
	^ 'equalizer'
]

{ #category : #accessing }
DelugeEqualizer >> bass [
	^ bass
]

{ #category : #accessing }
DelugeEqualizer >> bass: anObject [
	bass := anObject
]

{ #category : #accessing }
DelugeEqualizer >> bassFrequency [
	^ bassFrequency
]

{ #category : #accessing }
DelugeEqualizer >> bassFrequency: anObject [
	bassFrequency := anObject
]

{ #category : #'magritte description' }
DelugeEqualizer >> descriptionBass [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #bass;
		label: 'bass';
		priority: 1;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeEqualizer >> descriptionBassFrequency [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #bassFrequency;
		label: 'bassFrequency';
		priority: 2;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeEqualizer >> descriptionTreble [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #treble;
		label: 'treble';
		priority: 3;
		beXmlElement;
		yourself
]

{ #category : #'magritte description' }
DelugeEqualizer >> descriptionTrebleFrequency [
	<magritteDescription>
	^ DelugeHexDescription new
		accessor: #trebleFrequency;
		label: 'trebleFrequency';
		priority: 4;
		beXmlElement;
		yourself
]

{ #category : #accessing }
DelugeEqualizer >> treble [
	^ treble
]

{ #category : #accessing }
DelugeEqualizer >> treble: anObject [
	treble := anObject
]

{ #category : #accessing }
DelugeEqualizer >> trebleFrequency [
	^ trebleFrequency
]

{ #category : #accessing }
DelugeEqualizer >> trebleFrequency: anObject [
	trebleFrequency := anObject
]
