Extension { #name : #XOGValueTypeInference }

{ #category : #'*Synthstrom-Deluge' }
XOGValueTypeInference >> mergeTypes: aCollection [
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
