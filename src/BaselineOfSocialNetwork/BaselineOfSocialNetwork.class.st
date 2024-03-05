Class {
	#name : #BaselineOfSocialNetwork,
	#superclass : #BaselineOf,
	#category : #BaselineOfSocialNetwork
}

{ #category : #baseline }
BaselineOfSocialNetwork >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec 
			baseline: 'BabyPhexample' with: [
				spec repository: 'github://seandenigris/Baby-Phexample' ];
			baseline: 'GoogleApi' with: [
				spec
					repository: 'github://seandenigris/St-Google-API' ].
		spec package: #SocialNetwork with: [
				spec requires: #('BabyPhexample' 'GoogleApi' ). ]. ].
				
		spec for: #notGToolkit do: [
			spec baseline: 'PetitParser2Core' with: [
				spec repository: 'github://seandenigris/PetitParser2' ].
			spec package: #SocialNetwork with: [
				spec requires: #('PetitParser2Core' ). ] ]

]

{ #category : #accessing }
BaselineOfSocialNetwork >> customProjectAttributes [

	^ self isGTImage
			ifTrue: [ #(GToolkit) ]
			ifFalse: [ #(notGToolkit) ].
			
	"This is just for code generation purposes. To have an effect, it needs to be on the instance-side, but that could hide problems in other baselines because DeNigrisPreferences is not guaranteed to be loaded"
]

{ #category : #testing }
BaselineOfSocialNetwork >> isGTImage [
	
	^ RPackageOrganizer default packageNames anySatisfy: [ :pn | pn beginsWith: 'Lepiter-' ].
	"Implementation note: used to check for GToolkit prefix, but P7 has a GToolkit-Examples package. Lepiter, OTOH, could only be loaded in a GT image"
]
