"
*** automatically created by GoogleApiCreator ***


"
Class {
	#name : #GooglePeopleApiPeople,
	#superclass : #GooglePeopleApi,
	#category : 'SocialNetwork-Google-People'
}

{ #category : #generated }
GooglePeopleApiPeople >> createContact [

	^ self createContact: ( Dictionary new )

]

{ #category : #generated }
GooglePeopleApiPeople >> createContact: optionsDict [
	"
		Create a new contact and return the person resource for that contact.

		Parameters, * = required, optional parameters in optionsDict

		parent (String): The resource name of the owning person resource.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'v1/people:createContact' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GooglePeopleApiPeople >> deleteContact: resourceName [ 
	"
		Delete a contact person. Any non-contact data will not be deleted.

		Parameters, * = required, optional parameters in optionsDict

		resourceName (String*): The resource name of the contact to delete.
	"

	| action path values |

	action := #DELETE.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'v1/{+resourceName}:deleteContact' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GooglePeopleApiPeople >> deleteContactPhoto: resourceName [ 

	^ self deleteContactPhoto: resourceName options: ( Dictionary new )

]

{ #category : #generated }
GooglePeopleApiPeople >> deleteContactPhoto: resourceName options: optionsDict [
	"
		Delete a contact's photo.

		Parameters, * = required, optional parameters in optionsDict

		personFields (String): **Optional.** Not specifying any fields will skip the post mutate read.
A field mask to restrict which fields on the person are
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
		resourceName (String*): The resource name of the contact whose photo will be deleted.
	"

	| action path values |

	action := #DELETE.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'v1/{+resourceName}:deleteContactPhoto' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GooglePeopleApiPeople >> get: resourceName [ 

	^ self get: resourceName options: ( Dictionary new )

]

{ #category : #generated }
GooglePeopleApiPeople >> get: resourceName options: optionsDict [
	"
		Provides information about a person by specifying a resource name. Use
`people/me` to indicate the authenticated user.
<br>
The request throws a 400 error if 'personFields' is not specified.

		Parameters, * = required, optional parameters in optionsDict

		personFields (String): **Required.** A field mask to restrict which fields on the person are
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
		resourceName (String*): The resource name of the person to provide information about.

- To get information about the authenticated user, specify `people/me`.
- To get information about a google account, specify
 `people/`<var>account_id</var>.
- To get information about a contact, specify the resource name that
  identifies the contact as returned by
[`people.connections.list`](/people/api/rest/v1/people.connections/list).
		requestMask.includeField (String): **Required.** Comma-separated list of person fields to be included in the
response. Each path should start with `person.`: for example,
`person.names` or `person.photos`.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'v1/{+resourceName}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GooglePeopleApiPeople >> getBatchGet [

	^ self getBatchGet: ( Dictionary new )

]

{ #category : #generated }
GooglePeopleApiPeople >> getBatchGet: optionsDict [
	"
		Provides information about a list of specific people by specifying a list
of requested resource names. Use `people/me` to indicate the authenticated
user.
<br>
The request throws a 400 error if 'personFields' is not specified.

		Parameters, * = required, optional parameters in optionsDict

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
		requestMask.includeField (String): **Required.** Comma-separated list of person fields to be included in the
response. Each path should start with `person.`: for example,
`person.names` or `person.photos`.
		resourceNames (String): The resource names of the people to provide information about.

- To get information about the authenticated user, specify `people/me`.
- To get information about a google account, specify
  `people/`<var>account_id</var>.
- To get information about a contact, specify the resource name that
  identifies the contact as returned by
[`people.connections.list`](/people/api/rest/v1/people.connections/list).

You can include up to 50 resource names in one request.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'v1/people:batchGet' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GooglePeopleApiPeople >> updateContact: resourceName [ 

	^ self updateContact: resourceName options: ( Dictionary new )

]

{ #category : #generated }
GooglePeopleApiPeople >> updateContact: resourceName options: optionsDict [
	"
		Update contact data for an existing contact person. Any non-contact data
will not be modified.

The request throws a 400 error if `updatePersonFields` is not specified.
<br>
The request throws a 400 error if `person.metadata.sources` is not
specified for the contact to be updated.
<br>
The request throws a 412 error if `person.metadata.sources.etag` is
different than the contact's etag, which indicates the contact has changed
since its data was read. Clients should get the latest person and re-apply
their updates to the latest person.

		Parameters, * = required, optional parameters in optionsDict

		updatePersonFields (String): **Required.** A field mask to restrict which fields on the person are
updated. Multiple fields can be specified by separating them with commas.
All updated fields will be replaced. Valid values are:

* addresses
* biographies
* birthdays
* emailAddresses
* events
* genders
* imClients
* interests
* locales
* memberships
* names
* nicknames
* occupations
* organizations
* phoneNumbers
* relations
* residences
* sipAddresses
* urls
* userDefined
		resourceName (String*): The resource name for the person, assigned by the server. An ASCII string
with a max length of 27 characters, in the form of
`people/`<var>person_id</var>.
	"

	| action path values |

	action := #PATCH.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'v1/{+resourceName}:updateContact' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GooglePeopleApiPeople >> updateContactPhoto: resourceName [ 
	"
		Update a contact's photo.

		Parameters, * = required, optional parameters in optionsDict

		resourceName (String*): Person resource name
	"

	| action path values |

	action := #PATCH.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'v1/{+resourceName}:updateContactPhoto' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]
