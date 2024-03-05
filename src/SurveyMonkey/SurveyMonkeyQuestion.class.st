Class {
	#name : #SurveyMonkeyQuestion,
	#superclass : #Dictionary,
	#category : 'SurveyMonkey'
}

{ #category : #'as yet unclassified' }
SurveyMonkeyQuestion class >> on: aDictionary [

	^ self new
			data: aDictionary;
			yourself
]

{ #category : #accessing }
SurveyMonkeyQuestion >> doesNotUnderstand: aMessage [

	| key |
	key := aMessage selector normalizeCamelCase asLowercase copyReplaceAll: ' ' with: '_'.
	^ self
		at: key
		"ifPresent: [ : ]"
		ifAbsent: [ nil ]
]

{ #category : #'as yet unclassified' }
SurveyMonkeyQuestion >> printOn: aStream [

	self heading ifNotNil: [ :heading | aStream nextPutAll: heading ]
]
