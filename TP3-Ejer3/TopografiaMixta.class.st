Class {
	#name : #TopografiaMixta,
	#superclass : #Topografia,
	#instVars : [
		'components'
	],
	#category : #'TP3-Ejer3'
}

{ #category : #comparing }
TopografiaMixta >> = aTopografia [ 
	^ components hasEqualElements: aTopografia components
]

{ #category : #'as yet unclassified' }
TopografiaMixta >> agregar: aTopografia1 with: aTopografia2 with: aTopografia3 with: aTopografia4 [
	components addAll: { aTopografia1 . aTopografia2 . aTopografia3 . aTopografia4  }
]

{ #category : #private }
TopografiaMixta >> components [
	^ components
]

{ #category : #initialization }
TopografiaMixta >> initialize [
	components := OrderedCollection new.
]

{ #category : #'as yet unclassified' }
TopografiaMixta >> productividad [
	^ (components sumNumbers: [ :each | each productividad ]) / 4.0
]

{ #category : #'as yet unclassified' }
TopografiaMixta >> proporcionAgua [
	^ (components sumNumbers: [ :component | component proporcionAgua ]) / 4.0.
]
