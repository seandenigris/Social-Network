"
*** automatically created by GoogleApiCreator ***


"
Class {
	#name : #GoogleGmailApiUsersLabels,
	#superclass : #GoogleGmailApiUsers,
	#category : 'SocialNetwork-Gmail'
}

{ #category : #generated }
GoogleGmailApiUsersLabels >> create: userId [ 
	"
		Creates a new label.

		Parameters, * = required, optional parameters in optionsDict

		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/labels' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GoogleGmailApiUsersLabels >> delete: id userId: userId [ 
	"
		Immediately and permanently deletes the specified label and removes it from any messages and threads that it is applied to.

		Parameters, * = required, optional parameters in optionsDict

		id (String*): The ID of the label to delete.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #DELETE.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/labels/{id}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GoogleGmailApiUsersLabels >> get: id userId: userId [ 
	"
		Gets the specified label.

		Parameters, * = required, optional parameters in optionsDict

		id (String*): The ID of the label to retrieve.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/labels/{id}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GoogleGmailApiUsersLabels >> list: userId [ 
	"
		Lists all labels in the user's mailbox.

		Parameters, * = required, optional parameters in optionsDict

		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/labels' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GoogleGmailApiUsersLabels >> patch: id userId: userId [ 
	"
		Updates the specified label. This method supports patch semantics.

		Parameters, * = required, optional parameters in optionsDict

		id (String*): The ID of the label to update.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #PATCH.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/labels/{id}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GoogleGmailApiUsersLabels >> update: id userId: userId [ 
	"
		Updates the specified label.

		Parameters, * = required, optional parameters in optionsDict

		id (String*): The ID of the label to update.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #PUT.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/labels/{id}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]
