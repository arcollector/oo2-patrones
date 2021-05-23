Class {
	#name : #Directorio,
	#superclass : #Nodo,
	#instVars : [
		'nodos',
		'padre'
	],
	#category : #'O2-FileSystem'
}

{ #category : #'as yet unclassified' }
Directorio class >> llamado: unString creadoEl: unaFecha [
	^ self new initializeConNombre: unString conFecha: unaFecha.
]

{ #category : #'as yet unclassified' }
Directorio >> agregar: unNodo [
	unNodo esArchivo
		ifFalse: [ unNodo padre: nombre  ].
	nodos add: unNodo
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
	padre := '/'
]

{ #category : #'as yet unclassified' }
Directorio >> listadoDeContenido [
	| listadoStream |
	listadoStream := WriteStream on: String new.
	listadoStream << self toString.
	self algunDirectorio
		ifTrue: [ listadoStream cr.
			listadoStream
				<< (nodos collect: [ :nodo | nombre , nodo listadoDeContenido ]) asStringWithCr ].
	^ listadoStream contents
]

{ #category : #accessing }
Directorio >> padre: aString [ 
	padre := aString , '/'.
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
