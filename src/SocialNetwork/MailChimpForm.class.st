Class {
	#name : #MailChimpForm,
	#superclass : #Object,
	#instVars : [
		'u',
		'id',
		'email',
		'firstName',
		'lastName'
	],
	#category : 'SocialNetwork-Core'
}

{ #category : #accessing }
MailChimpForm >> email [
	^ email ifNil: [ '' ]
]

{ #category : #accessing }
MailChimpForm >> email: anObject [
	email := anObject
]

{ #category : #accessing }
MailChimpForm >> firstName [
	^ firstName ifNil: [ '' ]
]

{ #category : #accessing }
MailChimpForm >> firstName: anObject [
	firstName := anObject
]

{ #category : #accessing }
MailChimpForm >> id [
	^ id
]

{ #category : #accessing }
MailChimpForm >> id: anObject [
	id := anObject
]

{ #category : #accessing }
MailChimpForm >> lastName [
	^ lastName ifNil: [ '' ]
]

{ #category : #accessing }
MailChimpForm >> lastName: anObject [
	lastName := anObject
]

{ #category : #accessing }
MailChimpForm >> submit [
	ZnClient new
		url: 'http://facebook.us11.list-manage.com/subscribe/post';
		formAt: 'u' put: self u;
		formAt: 'id' put: self id;
		formAt: 'MERGE0' put: self email;
		formAt: 'MERGE1' put: self firstName;
		formAt: 'MERGE2' put: self lastName;
		post.
]

{ #category : #accessing }
MailChimpForm >> u [
	^ u
]

{ #category : #accessing }
MailChimpForm >> u: anObject [
	u := anObject
]

{ #category : #accessing }
MailChimpForm >> url [
	"Adapted from https://blog.mailchimp.com/how-to-pre-fill-items-on-your-mailchi		mp-hosted-form/"
	| result |
	result := 'http://facebook.us11.list-manage.com/subscribe' asUrl
			queryAt: 'u' put: self u;
			queryAt: 'id' put: self id;
			yourself.
	self email ifNotEmpty: [ :eml | result queryAt: 'MERGE0' put: eml ].
	self firstName ifNotEmpty: [ :fn | result queryAt: 'MERGE1' put: fn ].
	self lastName ifNotEmpty: [ :ln | result queryAt: 'MERGE2' put: ln ].
	^ result
]
