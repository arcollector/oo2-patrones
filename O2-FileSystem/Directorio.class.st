Class {
	#name : #Directorio,
	#superclass : #Nodo,
	#instVars : [
		'nodos'
	],
	#category : #'O2-FileSystem'
}

{ #category : #'as yet unclassified' }
Directorio class >> llamado: unString creadoEl: unaFecha [
	^ self new initializeConNombre: unString conFecha: unaFecha.
]

{ #category : #'as yet unclassified' }
Directorio >> agregar: unNodo [
	nodos add: unNodo .
]

{ #category : #initialization }
Directorio >> initialize [
	nodos := OrderedCollection new .
]

{ #category : #accessing }
Directorio >> peso [
	^ 32.
]

{ #category : #'as yet unclassified' }
Directorio >> tamanoTotalOcupado [
	^ (nodos sumNumbers: [ :each | each peso ]) + self peso .
]
