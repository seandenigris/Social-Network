"
*** automatically created by GoogleApiCreator ***


"
Class {
	#name : #GooglePeopleApiContactGroupsMembers,
	#superclass : #GooglePeopleApiContactGroups,
	#category : 'SocialNetwork-Google-People'
}

{ #category : #generated }
GooglePeopleApiContactGroupsMembers >> modify: resourceName [ 
	"
		Modify the members of a contact group owned by the authenticated user.
<br>
The only system contact groups that can have members added are
`contactGroups/myContacts` and `contactGroups/starred`. Other system
contact groups are deprecated and can only have contacts removed.

		Parameters, * = required, optional parameters in optionsDict

		resourceName (String*): The resource name of the contact group to modify.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: 'v1/{+resourceName}/members:modify' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.
]
