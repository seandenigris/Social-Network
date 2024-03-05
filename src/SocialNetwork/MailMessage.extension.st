Extension { #name : #MailMessage }

{ #category : #'*SocialNetwork' }
MailMessage >> saveAsDraft [
	| raw api |
	api := GoogleGmailApiUsersDrafts authenticatedFor: self class senderAccount.
	raw := self asSendableText urlSafeBase64Encoded. "Google expects URL-safe base64 per https://stackoverflow.com/questions/26663529/invalid-value-for-bytestring-error-when-calling-gmail-send-api-with-base64-encod"
	api create: self class senderAccount email options: (Dictionary with: 'message' -> (Dictionary with: 'raw' -> raw))
]
