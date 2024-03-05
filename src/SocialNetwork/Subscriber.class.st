Class {
	#name : #Subscriber,
	#superclass : #Object,
	#instVars : [
		'email',
		'name',
		'firstName',
		'lastName'
	],
	#category : 'SocialNetwork-Core'
}

{ #category : #'as yet unclassified' }
Subscriber >> asEmailHeaderString [
	^ self asString
]

{ #category : #accessing }
Subscriber >> email [
	^ email
]

{ #category : #'as yet unclassified' }
Subscriber >> email: aString [ 
	email := aString
]

{ #category : #'as yet unclassified' }
Subscriber >> fillMailChimpForm: form [
	form email: self email.
	self firstName ifNotEmpty: [ :fn | form firstName: fn ].
	self lastName ifNotEmpty: [ :ln | form lastName: ln ].
]

{ #category : #'as yet unclassified' }
Subscriber >> firstName [
	^ firstName ifNil: [  '' ]
]

{ #category : #'as yet unclassified' }
Subscriber >> firstName: aString [
	firstName := aString
]

{ #category : #'as yet unclassified' }
Subscriber >> lastName [
	^ lastName ifNil: [  '' ]
]

{ #category : #'as yet unclassified' }
Subscriber >> lastName: aString [
	lastName := aString
]

{ #category : #accessing }
Subscriber >> name [
	| result |
	result := self firstName.
	self lastName ifNotEmpty: [ :ln | result := result, ' ', ln ].
	^ result
]

{ #category : #accessing }
Subscriber >> name: anObject [
	self error: 'shouldn''t be called'.
	name := anObject
]

{ #category : #'as yet unclassified' }
Subscriber >> nameTokens [
	name ifNil: [ ^ #() ].
	^ Character space split: self name
]

{ #category : #'as yet unclassified' }
Subscriber >> printOn: aStream [

	self lastName ifNotEmpty: [ aStream nextPut: $" ].
	self name ifNotEmpty: [ aStream nextPutAll: self name ].
	self lastName ifNotEmpty: [ aStream nextPut: $" ].
	email ifNotNil: [ 
		self name ifNotEmpty: [ aStream nextPutAll: ' <' ].
		aStream nextPutAll: email.
		self name ifNotEmpty: [ aStream nextPut: $> ] ].
]

{ #category : #'as yet unclassified' }
Subscriber >> printTabbedOn: aStream [ 

	aStream
			nextPutAll: self firstName;
			tab;
			nextPutAll: self lastName;
			tab;
			nextPutAll: self email;
			crlf
]
