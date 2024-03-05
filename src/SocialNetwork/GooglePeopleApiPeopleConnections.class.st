"
*** automatically created by GoogleApiCreator ***


"
Class {
	#name : #GooglePeopleApiPeopleConnections,
	#superclass : #GooglePeopleApiPeople,
	#category : 'SocialNetwork-Google-People'
}

{ #category : #convenience }
GooglePeopleApiPeopleConnections >> list [
	^ self list: 'people/me'
]

{ #category : #generated }
GooglePeopleApiPeopleConnections >> list: resourceName [ 

	^ self list: resourceName options: ( Dictionary new )

]

{ #category : #generated }
GooglePeopleApiPeopleConnections >> list: resourceName options: optionsDict [
	"
		Provides a list of the authenticated user's contacts merged with any
connected profiles.
<br>
The request throws a 400 error if 'personFields' is not specified.

		Parameters, * = required, optional parameters in optionsDict

		resourceName (String*): The resource name to return connections for. Only `people/me` is valid.
		pageSize (Integer): The number of connections to include in the response. Valid values are
between 1 and 2000, inclusive. Defaults to 100.
		pageToken (String): The token of the page to be returned.
		requestSyncToken (Boolean): Whether the response should include a sync token, which can be used to get
all changes since the last request. For subsequent sync requests use the
`sync_token` param instead. Initial sync requests that specify
`request_sync_token` have an additional rate limit.
		requestMask.includeField (String): **Required.** Comma-separated list of person fields to be included in the
response. Each path should start with `person.`: for example,
`person.names` or `person.photos`.
		personFields (String): **Required.** A field mask to restrict which fields on each person are
returned. Multiple fields can be specified by separating them with commas.
Valid values are:

* addresses
* ageRanges
* biographies
* birthdays
* braggingRights
* coverPhotos
* emailAddresses
* events
* genders
* imClients
* interests
* locales
* memberships
* metadata
* names
* nicknames
* occupations
* organizations
* phoneNumbers
* photos
* relations
* relationshipInterests
* relationshipStatuses
* residences
* sipAddresses
* skills
* taglines
* urls
* userDefined
		syncToken (String): A sync token returned by a previous call to `people.connections.list`.
Only resources changed since the sync token was created will be returned.
Sync requests that specify `sync_token` have an additional rate limit.
		sortOrder (String): The order in which the connections should be sorted. Defaults to
`LAST_MODIFIED_ASCENDING`.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'v1/{+resourceName}/connections' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #convenience }
GooglePeopleApiPeopleConnections >> listWithOptions: optionsDict [
	^ self list: 'people/me' options: optionsDict
]
