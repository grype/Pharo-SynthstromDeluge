Extension { #name : #MAStringReader }

{ #category : #'*Synthstrom-Deluge' }
MAStringReader >> visitHexNumberDescription: aDescription [
	| prefix contents numericString |

	prefix := '0x'.
	contents := self contents.
	contents size > prefix size ifFalse: [ MAReadError signal ].
	numericString := contents copyFrom: prefix size + 1 to: contents size.

	self object: ([ 
		 ((NumberParser on: numericString) nextNumberBase: 16)
		 / (2 raisedTo: 32) ]
			 on: Error
			 do: [ :err | MAReadError signal: err messageText ])
]
