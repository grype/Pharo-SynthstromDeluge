Extension { #name : #MAStringWriter }

{ #category : #'*Synthstrom-Deluge' }
MAStringWriter >> visitHexNumberDescription: anObject [
	| pfx str |

	pfx := '16r'.
	str := (self object * (2 raisedTo: 32)) hex.
	str := str copyReplaceFrom: 1 to: pfx size with: ''.
	str := str padLeftTo: 8 with: $0.
	str := '0x' , str.
	self stream nextPutAll: str
]
