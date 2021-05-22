Class {
	#name : #FeedlotTest,
	#superclass : #TestCase,
	#category : #'TP3-Ejer3Tests'
}

{ #category : #tests }
FeedlotTest >> testDeperdicio [
	self assert: Feedlot new desperdicio equals: 0.9.

]
