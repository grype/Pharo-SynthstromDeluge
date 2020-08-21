Class {
	#name : #DelugeHexDescription,
	#superclass : #MANumberDescription,
	#category : #'Synthstrom-Deluge-Parsing'
}

{ #category : #visiting }
DelugeHexDescription >> acceptMagritte: aVisitor [
	aVisitor visitHexNumberDescription: self
]
