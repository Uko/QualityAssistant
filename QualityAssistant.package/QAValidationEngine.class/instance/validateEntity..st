utility
validateEntity: anEntity
	
	queue add: anEntity.
	
	inProgress not ifTrue: [ 
	
		inProgress := true. 
		[
			job run.
			inProgress := false
		] forkAt: Processor userBackgroundPriority ]