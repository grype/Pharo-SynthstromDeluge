Extension { #name : #CharacterSet }

{ #category : #'*Synthstrom-Deluge' }
CharacterSet class >> separatorsAndPunctuation [

	| set |
	set := self empty.
	set addAll: CharacterSet separators; addAll: CharacterSet punctuation.
	^set
]
