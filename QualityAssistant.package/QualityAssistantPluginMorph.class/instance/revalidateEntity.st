actions
revalidateEntity

	entity ifNotNil: [ 
		RELogger logForceRefreshed: entity.
		entity wipeCritics ]