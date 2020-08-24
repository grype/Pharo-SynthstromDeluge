Class {
	#name : #DelugeSynthContainerTests,
	#superclass : #DelugeContainerTests,
	#category : #'Synthstrom-Deluge-Tests'
}

{ #category : #running }
DelugeSynthContainerTests >> setUp [
	super setUp.
	file := self class randomSynthFile
]

{ #category : #tests }
DelugeSynthContainerTests >> testCompleteness [
	| container tempFile newContainer |

	container := DelugeSynthContainer fromFile: file asFileReference.
	tempFile := self class tempExportFile.
	tempFile exists ifTrue: [ tempFile delete ].
	container toFile: tempFile.
	newContainer := DelugeSynthContainer fromFile: tempFile.
	container should equal: newContainer
]
