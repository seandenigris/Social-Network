"
*** automatically created by GoogleApiCreator ***

Provides access to information about profiles and contacts.

Source: https://people.googleapis.com/$discovery/rest?version=v1
Version: v1
Documentation: https://developers.google.com/people/

"
Class {
	#name : #GooglePeopleApi,
	#superclass : #GoogleApiProxy,
	#category : 'SocialNetwork-Google-People'
}

{ #category : #generated }
GooglePeopleApi class >> apiName [
	^ 'people'
]

{ #category : #generated }
GooglePeopleApi >> basePath [
	^ 'https://people.googleapis.com/'
]

{ #category : #generated }
GooglePeopleApi >> rootPath [
	^ 'https://people.googleapis.com/'
]

{ #category : #generated }
GooglePeopleApi >> scopes [
	^ OrderedCollection withAll: #(
		'https://www.googleapis.com/auth/contacts'
		'https://www.googleapis.com/auth/user.birthday.read'
		'https://www.googleapis.com/auth/contacts.readonly'
		'https://www.googleapis.com/auth/user.addresses.read'
		'https://www.googleapis.com/auth/userinfo.profile'
		'https://www.googleapis.com/auth/user.phonenumbers.read'
		'https://www.googleapis.com/auth/userinfo.email'
		'https://www.googleapis.com/auth/user.emails.read'
	)

]
