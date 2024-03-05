Class {
	#name : #MailChimpList,
	#superclass : #Object,
	#instVars : [
		'u',
		'id'
	],
	#category : 'SocialNetwork-Core'
}

{ #category : #accessing }
MailChimpList >> exportUrl [
	| template urlString |
	template := 'https://us11.admin.mailchimp.com/lists/members/export?id={id}'.
	urlString := template format: { #id -> self id } asDictionary.
	^ urlString asUrl
]

{ #category : #accessing }
MailChimpList >> id [
	^ id
]

{ #category : #accessing }
MailChimpList >> id: anObject [
	id := anObject
]

{ #category : #accessing }
MailChimpList >> u [
	^ u
]

{ #category : #accessing }
MailChimpList >> u: anObject [
	u := anObject
]

{ #category : #accessing }
MailChimpList >> vCardUrl [
	| result |
	result := 'http://facebook.us11.list-manage.com/vcard' asUrl.
	^ result
			queryAt: 'u' put: self u;
			queryAt: 'id' put: self id;
			yourself
]
