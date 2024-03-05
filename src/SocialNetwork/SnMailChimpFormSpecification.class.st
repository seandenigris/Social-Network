Class {
	#name : #SnMailChimpFormSpecification,
	#superclass : #BabyPhexample,
	#category : 'SocialNetwork-Specification'
}

{ #category : #'as yet unclassified' }
SnMailChimpFormSpecification >> testHtmlButton [
	| button |
	button := HtmlButton new
		color: (Color fromHexString: '505050');
		target: 'http://google.com' asUrl;
		label: 'Sign Up for Our Newsletter';
		yourself.
	button sourceString should equal: '<table style="background-color: #505050; border: 1px solid #505050; border-radius: 5px;" border="0" width="100%" cellspacing="0" cellpadding="0">	 	 
<tbody>	 	 
<tr>	 	 
<td style="color: #ffffff; font-family: Helvetica, Arial, sans-serif; font-size: 16px; font-weight: bold; letter-spacing: -.5px; line-height: 150%; padding: 15px 30px 15px 30px; text-align: center;" align="center" valign="middle"><a style="color: #ffffff; text-decoration: none;" href="http://google.com/" target="_blank">Sign Up for Our Newsletter</a></td>	 	 
</tr>	 	 
</tbody>	 	 
</table>'
]

{ #category : #'as yet unclassified' }
SnMailChimpFormSpecification >> testUrl [

	| form |
	form := MailChimpForm new
		u: 'user';
		id: 'myID';
		email: 'me@myurl.com';
		firstName: 'Alan';
		lastName: 'Kay'.
	form url should equal: 'http://facebook.us11.list-manage.com/subscribe?MERGE1=Alan&u=user&MERGE2=Kay&id=myID&MERGE0=me@myurl.com' asUrl.
]
