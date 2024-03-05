Extension { #name : #String }

{ #category : #'*SocialNetwork' }
String >> encodeQuotedPrintable [
	^ QuotedPrintableMimeConverter mimeEncode: self
]

{ #category : #'*SocialNetwork' }
String >> urlSafeBase64Encoded [
	"Per https://stackoverflow.com/questions/26663529/invalid-value-for-bytestring-error-when-calling-gmail-send-api-with-base64-encod"
	| encoded |
	encoded := self base64Encoded.
	encoded := encoded copyReplaceAll: '+' with: '-'.
	^ encoded copyReplaceAll: '/' with: '_'.
]
