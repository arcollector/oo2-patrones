Class {
	#name : #TopografiaMixtaTest,
	#superclass : #TestCase,
	#instVars : [
		'pantano',
		'composite1',
		'composite2',
		'composite3'
	],
	#category : #'TP3-Ejer3Tests'
}

{ #category : #running }
TopografiaMixtaTest >> setUp [
	agua := Agua new.
	tierra := Tierra new.
	pantano := Pantano new.
	composite1 := TopografiaMixta new
		agregar: agua
		with: agua
		with: tierra
		with: tierra.
	composite2 := TopografiaMixta new
		agregar: tierra
		with: pantano
		with: pantano
		with: pantano.
	composite3 := TopografiaMixta new
		agregar: composite1
		with: agua
		with: agua
		with: composite2
]

{ #category : #tests }
TopografiaMixtaTest >> testEqual [
	self assert: composite1 = composite1.
	self deny: composite1 = composite2.
	self
		assert:
			composite1
				= 
					(TopografiaMixta new
						agregar: Agua new
						with: Agua new
						with: Tierra new
						with: Tierra new).
	self
		deny:
			composite1
				= 
					(TopografiaMixta new
						agregar: Tierra new
						with: Tierra new
						with: Agua new
						with: Agua new).
	self assert: composite3 = composite3.
	self
		assert:
			composite3
				= 
					(TopografiaMixta new
						agregar:
							(TopografiaMixta new
								agregar: Agua new
								with: Agua new
								with: Tierra new
								with: Tierra new)
						with: Agua new
						with: Agua new
						with:
							(TopografiaMixta new
								agregar: Tierra new
								with: Pantano new
								with: Pantano new
								with: Pantano new))
]

{ #category : #tests }
TopografiaMixtaTest >> testEqualsTo [
	self assert: (composite1 equalsTo: composite1).
	self deny: (composite1 equalsTo: composite2).
	self
		assert:
			(composite1
				equalsTo:
					(TopografiaMixta new
						agregar: Agua new
						with: Agua new
						with: Tierra new
						with: Tierra new)).
	self
		deny:
			(composite1
				equalsTo:
					(TopografiaMixta new
						agregar: Tierra new
						with: Tierra new
						with: Agua new
						with: Agua new)).
	self assert: (composite3 equalsTo: composite3).
	self
		assert:
			(composite3
				equalsTo:
					(TopografiaMixta new
						agregar:
							(TopografiaMixta new
								agregar: Agua new
								with: Agua new
								with: Tierra new
								with: Tierra new)
						with: Agua new
						with: Agua new
						with:
							(TopografiaMixta new
								agregar: Tierra new
								with: Pantano new
								with: Pantano new
								with: Pantano new)))
]

{ #category : #tests }
TopografiaMixtaTest >> testProporcionAgua [
	self assert: composite1 proporcionAgua closeTo: 0.5.
	self assert: composite2 proporcionAgua closeTo: 0.525.
	self assert: composite3 proporcionAgua closeTo: 0.75625.
]

{ #category : #tests }
TopografiaMixtaTest >> testProporcionTierra [
	self assert: composite1 proporcionTierra closeTo: 0.5.
	self assert: composite2 proporcionTierra closeTo: 0.475.
	self assert: composite3 proporcionTierra closeTo: 0.24375.
]
