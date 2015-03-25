actions
revalidateEntity: anEntity
	(settings packages includes: anEntity package) ifFalse: [ ^ self ].
	
	validationEngine validateEntity: anEntity 