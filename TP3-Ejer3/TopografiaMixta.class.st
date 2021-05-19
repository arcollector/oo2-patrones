Class {
	#name : #TopografiaMixta,
	#superclass : #Topografia,
	#instVars : [
		'components'
	],
	#category : #'TP3-Ejer3'
}

{ #category : #initialization }
TopografiaMixta >> initialize [
	components := OrderedCollection new.
]

{ #category : #'as yet unclassified' }
TopografiaMixta >> proporcionTotal [
	^components sumNumbers: [ :component | component proporcionTotal ] / 4
]
