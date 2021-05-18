Class {
	#name : #SocioTest,
	#superclass : #TestCase,
	#instVars : [
		'socio'
	],
	#category : #BibliotecaTest
}

{ #category : #running }
SocioTest >> setUp [
	socio:= Socio nombre: 'pepe' email: 'pepe@gmail.com' legajo: '12345'.

]

{ #category : #tests }
SocioTest >> testValidateFields [
self assert: socio nombre equals: 'pepe'.
self assert: socio email equals: 'pepe@gmail.com'.
self assert: socio legajo equals: '12345'.
]
