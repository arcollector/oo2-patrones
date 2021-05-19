Class {
	#name : #TopografiaMixta,
	#superclass : #Topografia,
	#instVars : [
		'components'
	],
	#category : #'TP3-Ejer3'
}

{ #category : #'as yet unclassified' }
TopografiaMixta >> agregarTopografia: aTopografia1 with: aTopografia2 with: aTopografia3 with: aTopografia4 [
	components addAll: { aTopografia1 . aTopografia2 . aTopografia3 . aTopografia4  }
]

{ #category : #accessing }
TopografiaMixta >> components [
^components
]

{ #category : #'as yet unclassified' }
TopografiaMixta >> equalsTo: aTopografia [
	^ components allSatisfy: [  ]
]

{ #category : #initialization }
TopografiaMixta >> initialize [
	components := OrderedCollection new.
]

{ #category : #'as yet unclassified' }
TopografiaMixta >> proporcion [
	^ ((components sumNumbers: [ :component | component proporcion ]) / 4) 
]

{ #category : #'as yet unclassified' }
TopografiaMixta >> proporcionAgua [
	^ (components sumNumbers: [ :component | component proporcionAgua ]) / 4
]

{ #category : #'as yet unclassified' }
TopografiaMixta >> proporcionTierra [
	^ (components sumNumbers: [ :component | component proporcionTierra]) / 4
]
