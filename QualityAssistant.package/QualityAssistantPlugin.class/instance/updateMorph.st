announcement handling
updateMorph
	morph ifNil: [ ^ self ].
	changeHandler execute
	