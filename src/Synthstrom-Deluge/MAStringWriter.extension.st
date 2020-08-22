Extension { #name : #MAStringWriter }

{ #category : #'*Synthstrom-Deluge' }
MAStringWriter >> visitHexNumberDescription: anObject [
	| pfx str |

	pfx := '16r'.
	str := (self object * (2 raisedTo: 32)) hex padRightTo: (8 + pfx size) with: $0.
	str := str copyReplaceFrom: 1 to: pfx size with: '0x'.
	self stream nextPutAll: str
]
