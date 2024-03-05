Extension { #name : #ZnUrl }

{ #category : #'*SocialNetwork-GoogleContacts' }
ZnUrl >> gcAs: class urlVia: connection [
	| fullProjectionPathSegments |
	fullProjectionPathSegments := self pathSegments copy
		at: 5 put: 'full';
		yourself.
	^ self
			segments: fullProjectionPathSegments;
			yourself
]
