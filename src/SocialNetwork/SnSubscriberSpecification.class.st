Class {
	#name : #SnSubscriberSpecification,
	#superclass : #BabyPhexample,
	#category : 'SocialNetwork-Specification'
}

{ #category : #'as yet unclassified' }
SnSubscriberSpecification >> testPrintFirstNameOnly [
	| person |
	person := Subscriber new
		email: 'me@myurl.com';
		name: 'Sean';
		yourself.
	person printString should equal: 'Sean <me@myurl.com>'
]

{ #category : #'as yet unclassified' }
SnSubscriberSpecification >> testPrintNoName [
	| person |
	person := Subscriber new
		email: 'me@myurl.com';
		yourself.
	person printString should equal: 'me@myurl.com'
]

{ #category : #'as yet unclassified' }
SnSubscriberSpecification >> testPrintWithLastName [
	| person |
	person := Subscriber new
		email: 'me@myurl.com';
		name: 'Sean D';
		yourself.
	person printString should equal: '"Sean D" <me@myurl.com>'
]
