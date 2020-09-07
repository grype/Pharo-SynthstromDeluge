Extension { #name : #ZnBufferedReadStream }

{ #category : #'*Synthstrom-Deluge' }
ZnBufferedReadStream >> skipAll: aCollection [
	[ (self next: aCollection size) = aCollection ] whileFalse: [ 
		self position: self position - aCollection size + 1 ]
]
