Class {
	#name : #Nodo,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'fecha',
		'peso'
	],
	#category : #'O2-FileSystem'
}

{ #category : #initialization }
Nodo >> initializeConNombre: aString conFecha: aDateAndTime [
	nombre := aString.
	fecha := aDateAndTime
]

{ #category : #accessing }
Nodo >> peso [
	self subclassResponsibility .
]
