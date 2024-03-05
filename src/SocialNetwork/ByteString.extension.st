Extension { #name : #ByteString }

{ #category : #'*SocialNetwork-GoogleContacts' }
ByteString >> gcAs: class urlVia: connection [
	^ class baseUrl / connection user / 'full' / self.
]
