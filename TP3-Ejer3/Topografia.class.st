Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #'TP3-Ejer3'
}

{ #category : #'as yet unclassified' }
Topografia >> equalsTo: aTopografia [ 
	^ self class = aTopografia class
]

{ #category : #'as yet unclassified' }
Topografia >> proporcion [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
Topografia >> proporcionAgua [
	^ self proporcion
]

{ #category : #'as yet unclassified' }
Topografia >> proporcionTierra [
	^ 1 - self proporcion
]
