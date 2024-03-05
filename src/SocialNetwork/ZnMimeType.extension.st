Extension { #name : #ZnMimeType }

{ #category : #'*SocialNetwork-GoogleContacts' }
ZnMimeType class >> applicationAtomXML [
	^ self main: 'application' sub: 'atom+xml'
]
