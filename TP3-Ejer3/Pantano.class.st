Class {
	#name : #Pantano,
	#superclass : #Topografia,
	#category : #'TP3-Ejer3'
}

{ #category : #'as yet unclassified' }
Pantano >> desperdicio [
	^ 0.15 * self proporcionAgua + (0.05 * self proporcionTierra)
]

{ #category : #'as yet unclassified' }
Pantano >> productividad [ 
	^ 0.5.
]

{ #category : #'as yet unclassified' }
Pantano >> proporcionAgua [ 
	^ 0.7.
]
