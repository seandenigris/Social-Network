"
*** automatically created by GoogleApiCreator ***

The Gmail REST API.

Source: https://www.googleapis.com/discovery/v1/apis/gmail/v1/rest
Version: v1
Documentation: https://developers.google.com/gmail/api/

"
Class {
	#name : #GoogleGmailApi,
	#superclass : #GoogleApiProxy,
	#category : 'SocialNetwork-Gmail'
}

{ #category : #generated }
GoogleGmailApi class >> apiName [
	^ 'gmail'
]

{ #category : #generated }
GoogleGmailApi >> basePath [
	^ 'https://www.googleapis.com/gmail/v1/users/'
]

{ #category : #generated }
GoogleGmailApi >> rootPath [
	^ 'https://www.googleapis.com/'
]

{ #category : #generated }
GoogleGmailApi >> scopes [
	^ OrderedCollection withAll: #(
		'https://www.googleapis.com/auth/gmail.insert'
		'https://www.googleapis.com/auth/gmail.modify'
		'https://www.googleapis.com/auth/gmail.compose'
		'https://www.googleapis.com/auth/gmail.labels'
		'https://www.googleapis.com/auth/gmail.send'
		'https://www.googleapis.com/auth/gmail.readonly'
		'https://mail.google.com/'
	)

]
