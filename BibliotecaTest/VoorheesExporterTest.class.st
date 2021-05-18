Class {
	#name : #VoorheesExporterTest,
	#superclass : #TestCase,
	#instVars : [
		'voorheesExporter',
		'socio1',
		'socio2'
	],
	#category : #BibliotecaTest
}

{ #category : #running }
VoorheesExporterTest >> setUp [
		voorheesExporter  := VoorheesExporter  new.
		socio1:= Socio nombre: 'pepe' email: 'pepe@gmail.com' legajo: '12345'.
		socio2:= Socio nombre: 'jose' email: 'jose@gmail.com' legajo: '12346'
]

{ #category : #tests }
VoorheesExporterTest >> testExport [
self assert: (voorheesExporter export: { socio1 . socio2 }) equals: '[
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
VoorheesExporterTest >> testExportSocio [
self assert: (voorheesExporter exportSocio: socio1) equals: '	{
		"nombre" : "pepe",
		"email" : "pepe@gmail.com",
		"legajo" : "12345"
	}' 
]
