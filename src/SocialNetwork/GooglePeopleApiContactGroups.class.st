"
*** automatically created by GoogleApiCreator ***


"
Class {
	#name : #GooglePeopleApiContactGroups,
	#superclass : #GooglePeopleApi,
	#category : 'SocialNetwork-Google-People'
}

{ #category : #generated }
GooglePeopleApiContactGroups >> batchGet [

	^ self batchGet: ( Dictionary new )

]

{ #category : #generated }
GooglePeopleApiContactGroups >> batchGet: optionsDict [
	"
		Get a list of contact groups owned by the authenticated user by specifying
a list of contact group resource names.

		Parameters, * = required, optional parameters in optionsDict

		maxMembers (Integer): Specifies the maximum number of members to return for each group.
		resourceNames (String): The resource names of the contact groups to get.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'v1/contactGroups:batchGet' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GooglePeopleApiContactGroups >> create [
	"
		Create a new contact group owned by the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'v1/contactGroups' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]

{ #category : #generated }
GooglePeopleApiContactGroups >> delete: resourceName [ 

	^ self delete: resourceName options: ( Dictionary new )

]

{ #category : #generated }
GooglePeopleApiContactGroups >> delete: resourceName options: optionsDict [
	"
		Delete an existing contact group owned by the authenticated user by
specifying a contact group resource name.

		Parameters, * = required, optional parameters in optionsDict

		resourceName (String*): The resource name of the contact group to delete.
		deleteContacts (Boolean): Set to true to also delete the contacts in the specified group.
	"

	| action path values |

	action := #DELETE.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'v1/{+resourceName}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GooglePeopleApiContactGroups >> get: resourceName [ 

	^ self get: resourceName options: ( Dictionary new )

]

{ #category : #generated }
GooglePeopleApiContactGroups >> get: resourceName options: optionsDict [
	"
		Get a specific contact group owned by the authenticated user by specifying
a contact group resource name.

		Parameters, * = required, optional parameters in optionsDict

		maxMembers (Integer): Specifies the maximum number of members to return.
		resourceName (String*): The resource name of the contact group to get.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'v1/{+resourceName}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GooglePeopleApiContactGroups >> list [

	^ self list: ( Dictionary new )

]

{ #category : #generated }
GooglePeopleApiContactGroups >> list: optionsDict [
	"
		List all contact groups owned by the authenticated user. Members of the
contact groups are not populated.

		Parameters, * = required, optional parameters in optionsDict

		pageSize (Integer): The maximum number of resources to return.
		pageToken (String): The next_page_token value returned from a previous call to
[ListContactGroups](/people/api/rest/v1/contactgroups/list).
Requests the next page of resources.
		syncToken (String): A sync token, returned by a previous call to `contactgroups.list`.
Only resources changed since the sync token was created will be returned.
	"

	| action path values |

	action := #GET.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'v1/contactGroups' with: values ).

	^ self makeRequestTo: path usingMethod: action with: optionsDict.
]

{ #category : #generated }
GooglePeopleApiContactGroups >> update: resourceName [ 
	"
		Update the name of an existing contact group owned by the authenticated
user.

		Parameters, * = required, optional parameters in optionsDict

		resourceName (String*): The resource name for the contact group, assigned by the server. An ASCII
string, in the form of `contactGroups/`<var>contact_group_id</var>.
	"

	| action path values |

	action := #PUT.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'v1/{+resourceName}' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]
