Class {
	#name : #DelugeOsc2,
	#superclass : #DelugeOsc,
	#instVars : [
		'oscillatorSync'
	],
	#category : #'Synthstrom-Deluge-Core'
}

{ #category : #accessing }
DelugeOsc2 class >> xmlElementName [
	^ 'osc2'
]

{ #category : #comparing }
DelugeOsc2 >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ cents = anObject cents and: [ 
		  fileName = anObject fileName and: [ 
			  loopMode = anObject loopMode and: [ 
				  oscillatorSync = anObject oscillatorSync and: [ 
					  retrigPhase = anObject retrigPhase and: [ 
						  reversed = anObject reversed and: [ 
							  sampleRanges = anObject sampleRanges and: [ 
								  timeStretchAmount = anObject timeStretchAmount and: [ 
									  timeStretchEnable = anObject timeStretchEnable and: [ 
										  transpose = anObject transpose and: [ 
											  type = anObject type and: [ zone = anObject zone ] ] ] ] ] ] ] ] ] ] ]
]

{ #category : #'magritte description' }
DelugeOsc2 >> descriptionOscillatorSync [
	<magritteDescription>
	^ MANumberDescription new
		accessor: #oscillatorSync;
		label: 'oscillatorSync';
		priority: 2;
		beXmlElement;
		beXmlAttribute;
		yourself
]

{ #category : #comparing }
DelugeOsc2 >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ cents hash bitXor: (fileName hash bitXor: (loopMode hash bitXor:
				    (oscillatorSync hash bitXor: (retrigPhase hash bitXor:
						      (reversed hash bitXor: (sampleRanges hash bitXor:
								        (timeStretchAmount hash bitXor:
									         (timeStretchEnable hash bitXor:
										          (transpose hash bitXor:
											           (type hash bitXor: zone hash))))))))))
]

{ #category : #accessing }
DelugeOsc2 >> oscillatorSync [
	^ oscillatorSync
]

{ #category : #accessing }
DelugeOsc2 >> oscillatorSync: anObject [
	oscillatorSync := anObject
]
