Extension { #name : #MAStringWriter }

{ #category : #'*Synthstrom-Deluge' }
MAStringWriter >> visitHexNumberDescription: anObject [
	| str |

	str := (self object * (2 raisedTo: 32)) hex.
	str := str copyReplaceFrom: 1 to: '16r' size + 1 with: '0x'.
	self stream nextPutAll: str
]
