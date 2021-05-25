Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #'TP3-Ejer3'
}

{ #category : #comparing }
Topografia >> = aTopografia [
	^ self proporcionAgua = aTopografia proporcionAgua
		and: self proporcionTierra = aTopografia proporcionTierra
]

{ #category : #'as yet unclassified' }
Topografia >> productividad [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
Topografia >> proporcionAgua [
	self subclassResponsibility .
]

{ #category : #'as yet unclassified' }
Topografia >> proporcionTierra [
	^ 1 - self proporcionAgua
]
