Class {
	#name : #GoogleContact,
	#superclass : #GoogleContactElement,
	#category : 'SocialNetwork-GoogleContacts'
}

{ #category : #'as yet unclassified' }
GoogleContact class >> baseUrl [
	^ 'https://www.google.com/m8/feeds/contacts' asUrl
]

{ #category : #'accessing-fields' }
GoogleContact >> email [
	"We have this special accessor because we're looking for an element attribute"
	
	| element |
	element := self cachedElementNamed: 'email'. 
	element ifNil: [ ^ nil ].
	^ element attributeAt: 'address'
]

{ #category : #'as yet unclassified' }
GoogleContact >> groups [
	| groupEntries |
	groupEntries := self cache / 'gContact:groupMembershipInfo'.
	^ groupEntries collect: [ :e | self server groupWithID: (e attributeAt: #href) asUrl ] as: OrderedCollection
]

{ #category : #'as yet unclassified' }
GoogleContact >> groups: aCollection [ 

	| newGroups newXML newElement |
	newGroups := aCollection reject: [ :g | self groups anySatisfy: [ :eg | eg idNumber = g idNumber ] ].
	newXML := self cache copy.
	newElement := newXML addElementNamed: 'gContact:groupMembershipInfo'.
	newElement
		attributeAt: 'deleted' put: 'false';
		attributeAt: 'href' put: newGroups first id asString.
	self server makeRequestTo: self id usingMethod: #PUT query: {} asDictionary body2: { #body -> newXML } asDictionary
]

{ #category : #accessing }
GoogleContact >> printOn: aStream [
	[ 
		| nick |
		nick := self cachedValueForElementNamed: #nickname
			ifAbsent:[	^ aStream nextPutAll: self fullName ].
		aStream nextPutAll: nick ]
		on: Error
		do: [ :ex | super printOn: aStream ]
]

{ #category : #'as yet unclassified' }
GoogleContact >> refresh [
	| account api updated |
	account := GoogleAccount detectNamed: 'Sean'.
	api := GoogleContactsApi authenticatedFor: account.
	updated := api contactWithID: self idNumber.
	self cache: updated cache.
]
