Class {
	#name : 'GoogleContactGroup',
	#superclass : 'GoogleContactElement',
	#category : 'SocialNetwork-GoogleContacts',
	#package : 'SocialNetwork',
	#tag : 'GoogleContacts'
}

{ #category : 'as yet unclassified' }
GoogleContactGroup class >> baseUrl [
	^ 'https://www.google.com/m8/feeds/groups' asUrl
]
