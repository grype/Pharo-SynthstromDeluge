Class {
	#name : #DelugeValueTypeInference,
	#superclass : #XOGValueTypeInference,
	#category : #'Synthstrom-Deluge-Parsing'
}

{ #category : #'as yet unclassified' }
DelugeValueTypeInference >> mergeTypes: aCollection [
	| types |
	types := aCollection removeDuplicates.
	types removeAllSuchThat: [ :each | each = #Empty ].
	types ifEmpty: [ ^ #Empty ].
	types size > 1
		ifTrue: [ 
			(types includes: #String) ifTrue: [ types removeAll; add: #String. ] ifFalse: [ 
			self error: 'Unforeseen error (obviously)' ] ].
	^ types first
]

{ #category : #'as yet unclassified' }
DelugeValueTypeInference >> typeOf: anObject [
	(#( 'true' 'false' ) includes: anObject) ifTrue: [ ^ #Boolean ].

	(anObject isString and: [ 
		 anObject size > 2 and: [ anObject beginsWith: '0x' ] ]) ifTrue: [ 
		((NumberParser on: (anObject copyFrom: 3 to: anObject size)) nextNumberBase: 16)
			isInteger
			ifTrue: [ ^ #Hex ]
			ifFalse: [ ^ #String ] ].

	(NumberParser isNumber: anObject) ifTrue: [ 
		| num |

		num := NumberParser parse: anObject.
		num isInteger ifTrue: [ ^ #Integer ].
		num isFloat ifTrue: [ ^ #Float ].
		^ #Number ].
	^ #String
]
