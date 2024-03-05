"
*** automatically created by GoogleApiCreator ***


"
Class {
	#name : #GoogleGmailApiUsers,
	#superclass : #GoogleGmailApi,
	#category : 'SocialNetwork-Gmail'
}

{ #category : #generated }
GoogleGmailApiUsers >> getProfile: userId [ 
	"
		Gets the current user's Gmail profile.

		Parameters, * = required, optional parameters in optionsDict

		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/profile' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GoogleGmailApiUsers >> stop: userId [ 
	"
		Stop receiving push notifications for the given user mailbox.

		Parameters, * = required, optional parameters in optionsDict

		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/stop' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GoogleGmailApiUsers >> watch: userId [ 
	"
		Set up or update a push notification watch on the given user mailbox.

		Parameters, * = required, optional parameters in optionsDict

		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/watch' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]
