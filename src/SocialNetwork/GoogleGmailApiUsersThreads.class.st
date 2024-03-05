"
*** automatically created by GoogleApiCreator ***


"
Class {
	#name : #GoogleGmailApiUsersThreads,
	#superclass : #GoogleGmailApiUsers,
	#category : 'SocialNetwork-Gmail'
}

{ #category : #generated }
GoogleGmailApiUsersThreads >> delete: id userId: userId [ 
	"
		Immediately and permanently deletes the specified thread. This operation cannot be undone. Prefer threads.trash instead.

		Parameters, * = required, optional parameters in optionsDict

		id (String*): ID of the Thread to delete.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #DELETE.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/threads/{id}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GoogleGmailApiUsersThreads >> get: id userId: userId [ 

	^ self get: id userId: userId options: ( Dictionary new )

]

{ #category : #generated }
GoogleGmailApiUsersThreads >> get: id userId: userId options: optionsDict [
	"
		Gets the specified thread.

		Parameters, * = required, optional parameters in optionsDict

		metadataHeaders (String): When given and format is METADATA, only include headers specified.
		format (String): The format to return the messages in.
		id (String*): The ID of the thread to retrieve.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/threads/{id}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GoogleGmailApiUsersThreads >> list: userId [ 

	^ self list: userId options: ( Dictionary new )

]

{ #category : #generated }
GoogleGmailApiUsersThreads >> list: userId options: optionsDict [
	"
		Lists the threads in the user's mailbox.

		Parameters, * = required, optional parameters in optionsDict

		includeSpamTrash (Boolean): Include threads from SPAM and TRASH in the results.
		pageToken (String): Page token to retrieve a specific page of results in the list.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
		labelIds (String): Only return threads with labels that match all of the specified label IDs.
		maxResults (Integer): Maximum number of threads to return.
		q (String): Only return threads matching the specified query. Supports the same query format as the Gmail search box. For example, ""from:someuser@example.com rfc822msgid: is:unread"".
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/threads' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GoogleGmailApiUsersThreads >> modify: id userId: userId [ 
	"
		Modifies the labels applied to the thread. This applies to all messages in the thread.

		Parameters, * = required, optional parameters in optionsDict

		id (String*): The ID of the thread to modify.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/threads/{id}/modify' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GoogleGmailApiUsersThreads >> trash: id userId: userId [ 
	"
		Moves the specified thread to the trash.

		Parameters, * = required, optional parameters in optionsDict

		id (String*): The ID of the thread to Trash.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/threads/{id}/trash' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GoogleGmailApiUsersThreads >> untrash: id userId: userId [ 
	"
		Removes the specified thread from the trash.

		Parameters, * = required, optional parameters in optionsDict

		id (String*): The ID of the thread to remove from Trash.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/threads/{id}/untrash' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]
