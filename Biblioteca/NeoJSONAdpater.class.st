Class {
	#name : #NeoJSONAdpater,
	#superclass : #Object,
	#category : #Biblioteca
}

{ #category : #exporting }
NeoJSONAdpater >> export: socios [
|colFormatted|
colFormatted := socios collect: [ :socio | self exportSocio: socio.].
^NeoJSONWriter toStringPretty: colFormatted
]

{ #category : #exporting }
NeoJSONAdpater >> exportSocio: aSocio [
^(OrderedDictionary new at: #nombre put: aSocio nombre; at: #email put: aSocio email; at: #legajo put: aSocio legajo; yourself).
]
