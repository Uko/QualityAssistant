actions
revalidateEntity

	entity ifNotNil: [ 
		QALogger logForceRefreshed: entity.
		entity wipeCritics ]