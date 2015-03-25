utility
validateEntity: anEntity
	
	queue add: anEntity.
	
	job isRunning ifFalse: [ 
		[ job run ] fork. ]