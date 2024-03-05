"
*** automatically created by GoogleApiCreator ***


"
Class {
	#name : #GoogleGmailApiUsersMessages,
	#superclass : #GoogleGmailApiUsers,
	#category : 'SocialNetwork-Gmail'
}

{ #category : #generated }
GoogleGmailApiUsersMessages >> delete: id userId: userId [ 
	"
		Immediately and permanently deletes the specified message. This operation cannot be undone. Prefer messages.trash instead.

		Parameters, * = required, optional parameters in optionsDict

		id (String*): The ID of the message to delete.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #DELETE.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/messages/{id}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GoogleGmailApiUsersMessages >> get: id userId: userId [ 

	^ self get: id userId: userId options: ( Dictionary new )

]

{ #category : #generated }
GoogleGmailApiUsersMessages >> get: id userId: userId options: optionsDict [
	"
		Gets the specified message.

		Parameters, * = required, optional parameters in optionsDict

		metadataHeaders (String): When given and format is METADATA, only include headers specified.
		format (String): The format to return the message in.
		id (String*): The ID of the message to retrieve.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/messages/{id}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GoogleGmailApiUsersMessages >> import: userId [ 

	^ self import: userId options: ( Dictionary new )

]

{ #category : #generated }
GoogleGmailApiUsersMessages >> import: userId options: optionsDict [
	"
		Imports a message into only this user's mailbox, with standard email delivery scanning and classification similar to receiving via SMTP. Does not send a message.

		Parameters, * = required, optional parameters in optionsDict

		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
		internalDateSource (String): Source for Gmail's internal date of the message.
		deleted (Boolean): Mark the email as permanently deleted (not TRASH) and only visible in Google Apps Vault to a Vault administrator. Only used for Google Apps for Work accounts.
		neverMarkSpam (Boolean): Ignore the Gmail spam classifier decision and never mark this email as SPAM in the mailbox.
		processForCalendar (Boolean): Process calendar invites in the email and add any extracted meetings to the Google Calendar for this user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self rootPath, ( self 
		replacePlaceholdersIn: '/upload/gmail/v1/users/{userId}/messages/import' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GoogleGmailApiUsersMessages >> insert: userId [ 

	^ self insert: userId options: ( Dictionary new )

]

{ #category : #generated }
GoogleGmailApiUsersMessages >> insert: userId options: optionsDict [
	"
		Directly inserts a message into only this user's mailbox similar to IMAP APPEND, bypassing most scanning and classification. Does not send a message.

		Parameters, * = required, optional parameters in optionsDict

		deleted (Boolean): Mark the email as permanently deleted (not TRASH) and only visible in Google Apps Vault to a Vault administrator. Only used for Google Apps for Work accounts.
		internalDateSource (String): Source for Gmail's internal date of the message.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self rootPath, ( self 
		replacePlaceholdersIn: '/upload/gmail/v1/users/{userId}/messages' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GoogleGmailApiUsersMessages >> list: userId [ 

	^ self list: userId options: ( Dictionary new )

]

{ #category : #generated }
GoogleGmailApiUsersMessages >> list: userId options: optionsDict [
	"
		Lists the messages in the user's mailbox.

		Parameters, * = required, optional parameters in optionsDict

		includeSpamTrash (Boolean): Include messages from SPAM and TRASH in the results.
		pageToken (String): Page token to retrieve a specific page of results in the list.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
		labelIds (String): Only return messages with labels that match all of the specified label IDs.
		maxResults (Integer): Maximum number of messages to return.
		q (String): Only return messages matching the specified query. Supports the same query format as the Gmail search box. For example, ""from:someuser@example.com rfc822msgid: is:unread"".
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/messages' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GoogleGmailApiUsersMessages >> modify: id userId: userId [ 
	"
		Modifies the labels on the specified message.

		Parameters, * = required, optional parameters in optionsDict

		id (String*): The ID of the message to modify.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/messages/{id}/modify' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GoogleGmailApiUsersMessages >> send: userId [ 
	"
		Sends the specified message to the recipients in the To, Cc, and Bcc headers.

		Parameters, * = required, optional parameters in optionsDict

		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self rootPath, ( self 
		replacePlaceholdersIn: '/upload/gmail/v1/users/{userId}/messages/send' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #sending }
GoogleGmailApiUsersMessages >> send: userId options: optionsDict [
	"
		Sends the specified message to the recipients in the To, Cc, and Bcc headers.

		Parameters, * = required, optional parameters in optionsDict

		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self rootPath, ( self 
		replacePlaceholdersIn: '/upload/gmail/v1/users/{userId}/messages/send' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GoogleGmailApiUsersMessages >> send: userId raw: aString [
	"
		Sends the specified message to the recipients in the To, Cc, and Bcc headers.

		Parameters, * = required, optional parameters in optionsDict

		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self rootPath, ( self 
		replacePlaceholdersIn: '/upload/gmail/v1/users/{userId}/messages/send' with: values ).

	^ self makeRequestTo: path usingMethod: action with: (Dictionary with: 'raw' -> aString).
]

{ #category : #generated }
GoogleGmailApiUsersMessages >> trash: id userId: userId [ 
	"
		Moves the specified message to the trash.

		Parameters, * = required, optional parameters in optionsDict

		id (String*): The ID of the message to Trash.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/messages/{id}/trash' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GoogleGmailApiUsersMessages >> untrash: id userId: userId [ 
	"
		Removes the specified message from the trash.

		Parameters, * = required, optional parameters in optionsDict

		id (String*): The ID of the message to remove from Trash.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/messages/{id}/untrash' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]
