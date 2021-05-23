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

{ #category : #'as yet unclassified' }
Directorio >> algunArchivo [
	^ nodos anySatisfy: [ :nodo | nodo esArchivo ].
]

{ #category : #'as yet unclassified' }
Directorio >> algunDirectorio [
	^ nodos anySatisfy: [ :nodo | nodo esArchivo not ].
]

{ #category : #'as yet unclassified' }
Directorio >> esArchivo [
	^ false.
]

{ #category : #initialization }
Directorio >> initialize [
	nodos := OrderedCollection new .
]

{ #category : #'as yet unclassified' }
Directorio >> listadoDeContenido [
	| listadoStream |
	listadoStream := WriteStream on: String new.
	listadoStream << self toString.
	self algunDirectorio
		ifTrue: [ listadoStream cr.
			listadoStream
				<< (nodos collect: [ :nodo | nodo listadoDeContenido ]) asStringWithCr ].
	^ listadoStream contents
]

{ #category : #accessing }
Directorio >> peso [
	^ 32.
]

{ #category : #'as yet unclassified' }
Directorio >> tamanoTotalOcupado [
	^ (nodos sumNumbers: [ :each | each peso ]) + self peso .
]

{ #category : #printing }
Directorio >> toString [
	self algunArchivo
		ifTrue: [ ^ '/' , nombre , ' (' , self totalArchivos printString
				, ' archivos)' ].
	^ '/' , nombre
]

{ #category : #printing }
Directorio >> totalArchivos [
	^ (nodos select: [ :nodo | nodo esArchivo ]) size.
]
