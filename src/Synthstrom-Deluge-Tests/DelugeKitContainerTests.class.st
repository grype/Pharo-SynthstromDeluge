Class {
	#name : #DelugeKitContainerTests,
	#superclass : #DelugeContainerTests,
	#category : #'Synthstrom-Deluge-Tests'
}

{ #category : #running }
DelugeKitContainerTests >> setUp [
	super setUp.
	file := self class randomKitFile 
]

{ #category : #tests }
DelugeKitContainerTests >> testCompleteness [
	| container tempFile newContainer |

	container := DelugeKitContainer fromFile: file asFileReference.
	tempFile := self class tempExportFile.
	tempFile exists ifTrue: [ tempFile delete ].
	container toFile: tempFile.
	newContainer := DelugeKitContainer fromFile: tempFile.
	container should equal: newContainer
]
