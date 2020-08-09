"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestSynthstromDeluge,
	#superclass : #PackageManifest,
	#category : #'Synthstrom-Deluge-Manifest'
}

{ #category : #'code-critics' }
ManifestSynthstromDeluge class >> ruleStringConcatenationRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#'Synthstrom-Deluge')) #'2020-08-09T00:17:06.977106-07:00') )
]
