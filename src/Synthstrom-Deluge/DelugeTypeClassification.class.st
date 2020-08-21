Class {
	#name : #DelugeTypeClassification,
	#superclass : #XOGTypeClassification,
	#category : #'Synthstrom-Deluge-Parsing'
}

{ #category : #testing }
DelugeTypeClassification >> isInlined: anElement [
	anElement isRoot
		ifTrue: [ ^ false ].
	anElement attributes size > 1
		ifTrue: [ ^ false ].
	anElement hasAttributes not & anElement hasElements not
		ifTrue: [ ^ true ].
	anElement attributes size = 1 & anElement hasElements not
		ifTrue: [ ^ true ].
	^ false
]

{ #category : #testing }
DelugeTypeClassification >> isList: anElement [
	| childName |

	anElement isRoot ifTrue: [ ^ false ].
	anElement attributes ifNotEmpty: [ ^ false ].
	anElement hasElements ifFalse: [ ^ false ].
	anElement elements size > 1 ifFalse: [ ^ false ].
	childName := anElement elements anyOne name.
	^ anElement elements allSatisfy: [ :each | each name = childName ]
]
