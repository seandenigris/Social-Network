"
Google Contacts provides read-write access, where People is read-only. However Contacts is not available via the Discovery API and so had to be hand-written.
"
Class {
	#name : #GoogleContactsApi,
	#superclass : #GoogleApiProxy,
	#category : 'SocialNetwork-GoogleContacts'
}

{ #category : #'as yet unclassified' }
GoogleContactsApi class >> apiName [
	^ 'contacts'
]

{ #category : #convenience }
GoogleContactsApi >> contactWithID: aStringOrURL [
	^ self new: GoogleContact withID: aStringOrURL
]

{ #category : #convenience }
GoogleContactsApi >> contacts [
	^ self makeRequestTo: 'https://www.google.com/m8/feeds/contacts' asUrl / self user / 'full' usingMethod: #GET with: Dictionary new
]

{ #category : #convenience }
GoogleContactsApi >> contactsSelect: aBlock [
	| url |
	url := 'https://www.google.com/m8/feeds/contacts' asUrl / self user / 'full'.
	aBlock value: url.
	^ self makeRequestTo: url usingMethod: #GET with: Dictionary new
]

{ #category : #convenience }
GoogleContactsApi >> get: aUrl [
	| result |
	result := self makeRequestTo: aUrl usingMethod: #GET with: Dictionary new.
	result first isSuccess ifFalse: [ self error: 'Request failed!' ].
	^ (XMLDOMParser on: result second) parseDocument
]

{ #category : #convenience }
GoogleContactsApi >> groupNamed: aString [
	"https://developers.google.com/google-apps/contacts/v3/#retrieving_contact_groups_using_query_parameters"
	
	| document entries groups |
	document := self get: 'https://www.google.com/m8/feeds/groups' asUrl / self user / 'full'.
	entries := document // #entry.
	groups := entries collect: [ :e | GoogleContactGroup fromXMLElement: e ].
	^ groups detect: [ :e | e title = aString ]
]

{ #category : #convenience }
GoogleContactsApi >> groupWithID: aStringOrURL [
	"https://developers.google.com/google-apps/contacts/v3/"
	
		^ self new: GoogleContactGroup withID: aStringOrURL
]

{ #category : #'as yet unclassified' }
GoogleContactsApi >> makeRequestTo: url usingMethod: method with: dictionary [
	"The version must be set to 3.0 - preferably via the headers, but otherwise in the query - https://developers.google.com/google-apps/contacts/v3/#specifying_a_version"
	^ super makeRequestTo: url ? ('v' -> '3.0') usingMethod: method with: dictionary
]

{ #category : #convenience }
GoogleContactsApi >> new: class withID: aStringOrURL [
	| entry |
	entry := self xmlFor: class withID: aStringOrURL.
	^ class fromXMLElement: entry
]

{ #category : #'as yet unclassified' }
GoogleContactsApi >> scopes [
	^ OrderedCollection withAll: #(
		'https://www.googleapis.com/auth/contacts.readonly'
		'https://www.google.com/m8/feeds/'
		'https://www.googleapis.com/auth/contacts'
	)
]

{ #category : #convenience }
GoogleContactsApi >> search: aString [
	"Reference: https://developers.google.com/google-apps/contacts/v3/reference#contacts-query-parameters-reference"
	
	| document |
	document := self get: 'https://www.google.com/m8/feeds/contacts' asUrl / self user / 'full' ? ('q' -> aString).
	(document findElementNamed: 'openSearch:totalResults') contentString asNumber < 1 ifTrue: [ ^ #() ].
	^ document / #feed / #entry collect: [ :e | GoogleContact fromXMLElement: e ] as: OrderedCollection
]

{ #category : #'as yet unclassified' }
GoogleContactsApi >> user [
	^ 'default'
]

{ #category : #convenience }
GoogleContactsApi >> xmlFor: class withID: aStringOrURL [
	| document url |
	url := aStringOrURL gcAs: class urlVia: self.
	document := self get: url.
	^ document elementAt: #entry.
]
