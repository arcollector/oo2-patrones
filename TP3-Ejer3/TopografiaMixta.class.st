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

{ #category : #'as yet unclassified' }
TopografiaMixta >> desperdicio [ 
	|res|
	res := (components sumNumbers: [ :each | each desperdicio ]) / 4.0.
	res < 0.5 ifTrue: [ ^ res * 1.03 ].
	^ res.
]

{ #category : #'as yet unclassified' }
TopografiaMixta >> equalsTo: aTopografia [
	"{ {a1 . b1 } . { a2 . b2 } . {a3 . b3 } }"

	"^ (components zip: aTopografia compnents) allSatisfy: [ :a :b | a equalsTo: b ]"

	1 to: 4 do: [ :i | 
		((components at: i) equalsTo: (aTopografia components at: i))
			ifFalse: [ ^ false ] ].
	^ true
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
