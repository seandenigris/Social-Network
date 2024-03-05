Class {
	#name : #GoogleAccount,
	#superclass : #Object,
	#instVars : [
		'nickname',
		'email'
	],
	#classVars : [
		'Accounts'
	],
	#category : 'SocialNetwork-Gmail'
}

{ #category : #accessing }
GoogleAccount class >> chart [
	^ Accounts ifNil: [ Accounts := OrderedCollection new ]
]

{ #category : #accessing }
GoogleAccount class >> chart: anObject [
	Accounts := anObject
]

{ #category : #accessing }
GoogleAccount class >> detectNamed: aString [
	^ self chart detect: [ :e | e nickname = aString ]
]

{ #category : #accessing }
GoogleAccount >> email [
	^ email
]

{ #category : #accessing }
GoogleAccount >> email: anObject [
	email := anObject
]

{ #category : #accessing }
GoogleAccount >> nickname [
	^ nickname
]

{ #category : #accessing }
GoogleAccount >> nickname: anObject [
	nickname := anObject
]

{ #category : #accessing }
GoogleAccount >> printOn: aStream [

	nickname ifNotNil: [ aStream nextPutAll: self nickname ].
	email ifNotNil: [ aStream space; nextPutAll: self email ].
]
