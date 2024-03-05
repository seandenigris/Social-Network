Class {
	#name : #GoogleContactElement,
	#superclass : #Object,
	#instVars : [
		'cache',
		'id'
	],
	#category : #'SocialNetwork-GoogleContacts'
}

{ #category : #'instance creation' }
GoogleContactElement class >> fromXMLElement: aXMLElement [ 
	^ self new fromXMLElement: aXMLElement
]

{ #category : #'as yet unclassified' }
GoogleContactElement >> account [
	^ GoogleAccount chart detect: [ :a | self isOwnedBy: a ]
]

{ #category : #accessing }
GoogleContactElement >> cache [
	cache ifNotNil: [ ^ cache ].
	^ cache := self server xmlFor: self class withID: self id.
]

{ #category : #accessing }
GoogleContactElement >> cache: anObject [
	cache := anObject
]

{ #category : #accessing }
GoogleContactElement >> cachedElementNamed: aString [
	cache ifNil: [ ^ nil ].
	^ self cache findElementNamed: aString.
]

{ #category : #accessing }
GoogleContactElement >> cachedValueForElementNamed: aString [
	cache ifNil: [ ^ nil ].
	^ self cache cachedValueForElementNamed: aString ifAbsent: [ nil ]
]

{ #category : #accessing }
GoogleContactElement >> cachedValueForElementNamed: aString ifAbsent: aBlock [
	| element |
	cache ifNil: [ ^ nil ].
	element := self cache findElementNamed: aString.
	element ifNil: [ ^ aBlock value ].
	^ element contentString
]

{ #category : #accessing }
GoogleContactElement >> doesNotUnderstand: aMessage [
	
	^ self 
		cachedValueForElementNamed: aMessage selector
		ifAbsent: [ super doesNotUnderstand: aMessage ].
]

{ #category : #'as yet unclassified' }
GoogleContactElement >> fromXMLElement: anXMLElement [ 
	id := (anXMLElement elementAt: 'id') contentString asUrl.
	cache := anXMLElement
]

{ #category : #accessing }
GoogleContactElement >> hasElementNamed: aString [

	self cachedValueForElementNamed: aString ifAbsent: [ ^ false ].
	^ true
]

{ #category : #accessing }
GoogleContactElement >> id [
	^ id
]

{ #category : #accessing }
GoogleContactElement >> id: aUrl [
	id := aUrl gcAs: self class urlVia: self server.
]

{ #category : #'as yet unclassified' }
GoogleContactElement >> idNumber [
	^ self id pathSegments last
]

{ #category : #'as yet unclassified' }
GoogleContactElement >> isOwnedBy: account [
	^ self id pathSegments fourth = account email
]

{ #category : #'as yet unclassified' }
GoogleContactElement >> printOn: aStream [
	[ aStream nextPutAll: self title ]
		on: Error
		do: [ :ex | super printOn: aStream ]
]

{ #category : #'as yet unclassified' }
GoogleContactElement >> server [
	^ GoogleContactsApi authenticatedFor: self account.
]
