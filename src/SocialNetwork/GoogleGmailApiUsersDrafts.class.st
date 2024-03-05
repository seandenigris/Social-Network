"
*** automatically created by GoogleApiCreator ***


"
Class {
	#name : #GoogleGmailApiUsersDrafts,
	#superclass : #GoogleGmailApiUsers,
	#category : #'SocialNetwork-Gmail'
}

{ #category : #'*SocialNetwork-examples' }
GoogleGmailApiUsersDrafts class >> example1 [

	| userID api answer draftInfos draftMetaAnswer |
	userID := 'me@gmail.com'.
	api := GoogleGmailApiUsersDrafts authenticated.
	answer := api list: userID.
	self assert: answer first isSuccess.
	draftInfos := answer second at: 'drafts'.
	draftMetaAnswer := api
		get: (draftInfos first at: 'id')
		userId: userID
		query: (Dictionary with: 'format' -> 'metadata')
		body: Dictionary new.
	self assert: draftMetaAnswer first isSuccess.
	((draftMetaAnswer second at: 'message') at: 'snippet')
		beginsWith: 'Thank you for your support! Sign up for important updates. '
]

{ #category : #generated }
GoogleGmailApiUsersDrafts >> create: userId [ 
	"
		Creates a new draft with the DRAFT label.

		Parameters, * = required, optional parameters in optionsDict

		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self rootPath, ( self 
		replacePlaceholdersIn: '/upload/gmail/v1/users/{userId}/drafts' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #creating }
GoogleGmailApiUsersDrafts >> create: userId options: optionsDict [
	"
		Creates a new draft with the DRAFT label.

		Parameters, * = required, optional parameters in optionsDict

		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self rootPath, ( self 
		replacePlaceholdersIn: '/upload/gmail/v1/users/{userId}/drafts' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #creating }
GoogleGmailApiUsersDrafts >> create: userId query: queryDictionary body: bodyDictionary [
	"
		Creates a new draft with the DRAFT label.

		Parameters, * = required, optional parameters in optionsDict

		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self rootPath, ( self 
		replacePlaceholdersIn: '/upload/gmail/v1/users/{userId}/drafts' with: values ).

	^ self makeRequestTo: path usingMethod: action query: queryDictionary body: bodyDictionary
]

{ #category : #generated }
GoogleGmailApiUsersDrafts >> delete: id userId: userId [ 
	"
		Immediately and permanently deletes the specified draft. Does not simply trash it.

		Parameters, * = required, optional parameters in optionsDict

		id (String*): The ID of the draft to delete.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #DELETE.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/drafts/{id}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GoogleGmailApiUsersDrafts >> get: id userId: userId [ 

	^ self get: id userId: userId options: ( Dictionary new )

]

{ #category : #generated }
GoogleGmailApiUsersDrafts >> get: id userId: userId options: optionsDict [
	"
		Gets the specified draft.

		Parameters, * = required, optional parameters in optionsDict

		format (String): The format to return the draft in.
		id (String*): The ID of the draft to retrieve.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/drafts/{id}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GoogleGmailApiUsersDrafts >> list: userId [ 

	^ self list: userId options: ( Dictionary new )

]

{ #category : #generated }
GoogleGmailApiUsersDrafts >> list: userId options: optionsDict [
	"
		Lists the drafts in the user's mailbox.

		Parameters, * = required, optional parameters in optionsDict

		pageToken (String): Page token to retrieve a specific page of results in the list.
		maxResults (Integer): Maximum number of drafts to return.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/drafts' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GoogleGmailApiUsersDrafts >> send: userId [ 
	"
		Sends the specified, existing draft to the recipients in the To, Cc, and Bcc headers.

		Parameters, * = required, optional parameters in optionsDict

		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self rootPath, ( self 
		replacePlaceholdersIn: '/upload/gmail/v1/users/{userId}/drafts/send' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GoogleGmailApiUsersDrafts >> update: id userId: userId [ 
	"
		Replaces a draft's content.

		Parameters, * = required, optional parameters in optionsDict

		id (String*): The ID of the draft to update.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #PUT.
	values := self argumentsFor: thisContext.
	path := self rootPath, ( self 
		replacePlaceholdersIn: '/upload/gmail/v1/users/{userId}/drafts/{id}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]
