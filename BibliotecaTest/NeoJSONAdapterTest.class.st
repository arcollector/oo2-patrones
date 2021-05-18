Class {
	#name : #NeoJSONAdapterTest,
	#superclass : #TestCase,
	#instVars : [
		'neoJSON',
		'socio1',
		'socio2'
	],
	#category : #BibliotecaTest
}

{ #category : #running }
NeoJSONAdapterTest >> setUp [
	neoJSON := NeoJSONAdpater new.
	socio1 := Socio
		nombre: 'pepe'
		email: 'pepe@gmail.com'
		legajo: '12345'.
	socio2 := Socio
		nombre: 'jose'
		email: 'jose@gmail.com'
		legajo: '12346'
]

{ #category : #tests }
NeoJSONAdapterTest >> testExport [ 
self
		assert:
			(neoJSON 
				export:
					{socio1.
					socio2})
		equals:
			'[
	{
		"nombre" : "pepe",
		"email" : "pepe@gmail.com",
		"legajo" : "12345"
	},
	{
		"nombre" : "jose",
		"email" : "jose@gmail.com",
		"legajo" : "12346"
	}
]'
]

{ #category : #tests }
NeoJSONAdapterTest >> testExportSocio [
	| dic |
	dic := OrderedDictionary new
		at: #nombre put: socio1 nombre;
		at: #email put: socio1 email;
		at: #legajo put: socio1 legajo;
		yourself.
	self assert: (neoJSON exportSocio: socio1) equals: dic
]
