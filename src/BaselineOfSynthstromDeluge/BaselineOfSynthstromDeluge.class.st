Class {
	#name : #BaselineOfSynthstromDeluge,
	#superclass : #BaselineOf,
	#category : #BaselineOfSynthstromDeluge
}

{ #category : #baselines }
BaselineOfSynthstromDeluge >> baseline: spec [
	<baseline>
	spec for: #common do: [ 
		spec baseline: 'XMLMAGenerator' with: [ 
			spec repository:
				'github://peteruhnak/xml-magritte-generator/repository' ].
		spec
			baseline: 'ObjectTravel'
			with: [ spec repository: 'github://pharo-ide/ObjectTravel:v1.0.0' ].
		spec
			baseline: 'Mocketry'
			with: [ spec repository: 'github://dionisiydk/Mocketry' ].
		spec
			baseline: 'AkaiMPC'
			with: [ spec repository: 'github://grype/Pharo-Akai-MPC' ].
		spec
			package: 'Synthstrom-Deluge'
			with: [ spec requires: #( 'XMLMAGenerator' 'ObjectTravel' ) ].
		spec
			package: 'Synthstrom-Deluge-Tests'
			with: [ spec requires: #( 'Synthstrom-Deluge' 'Mocketry' ) ].
		spec
			group: 'Core' with: #( 'Synthstrom-Deluge' );
			group: 'CoreTests' with: #( 'Synthstrom-Deluge-Tests' );
			group: 'Akai' with: #( 'Core' 'AkaiMPC' );
			group: 'default' with: #( 'Core' ) ]
]
