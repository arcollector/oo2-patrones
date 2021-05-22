Class {
	#name : #Archivo,
	#superclass : #Nodo,
	#category : #'O2-FileSystem'
}

{ #category : #'as yet unclassified' }
Archivo class >> llamado: unString creadoEl: unaFecha kBytes: unNumero [
	^ self new
		initializeConNombre: unString
		conFecha: unaFecha ;
		peso: unNumero ;
		yourself .
]

{ #category : #initialization }
Archivo >> initializeConNombre: aString conFecha: aDateAndTime conPeso: anInteger [
	nombre := aString .
	fecha := aDateAndTime .
	peso := anInteger.

]

{ #category : #accessing }
Archivo >> peso [
	^ peso.
]

{ #category : #accessing }
Archivo >> peso: anInteger [
	peso := anInteger .
]
