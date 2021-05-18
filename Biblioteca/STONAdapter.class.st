Class {
	#name : #STONAdapter,
	#superclass : #Object,
	#category : #Biblioteca
}

{ #category : #exporting }
STONAdapter >> export: socios [
	"| colFormatted |
	colFormatted := socios collect: [ :socio | self exportSocio: socio ].
	^ STONJSON toStringPretty: colFormatted asArray"



	| colFormatted |
	colFormatted := (1 to: socios size)
		collect: [ :each | self exportSocio: (socios at: each) ].
	^ STONJSON toStringPretty: colFormatted
]

{ #category : #exporting }
STONAdapter >> exportSocio: aSocio [
		^ OrderedDictionary new
		at: #nombre put: aSocio nombre;
		at: #email put: aSocio email;
		at: #legajo put: aSocio legajo;
		yourself
]
