Extension { #name : #GoogleApiProxy }

{ #category : #'*SocialNetwork' }
GoogleApiProxy class >> authenticatedFor: account [
	^ self connections
			at: account
			ifAbsentPut: [ self authenticateFor: account ]
]
