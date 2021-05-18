Class {
	#name : #BibliotecaTest,
	#superclass : #TestCase,
	#instVars : [
		'biblioteca',
		'socio1',
		'socio2'
	],
	#category : #BibliotecaTest
}

{ #category : #running }
BibliotecaTest >> setUp [
	biblioteca := Biblioteca new: VoorheesExporter new.
	socio1:= Socio nombre: 'pepe' email: 'pepe@gmail.com' legajo: '12345'.
	 
]

{ #category : #tests }
BibliotecaTest >> testAgregarSocio [
self assert: biblioteca socios size equals: 0.
biblioteca agregarSocio: socio1.
self assert: biblioteca socios size equals:1.
]
