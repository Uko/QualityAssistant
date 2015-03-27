utility
validateEntity: anEntity
	
	queue add: anEntity.
	
	inProgress not ifTrue: [ 
	
		inProgress := true. 
		[
			[ job run ] ensure: [  
				inProgress := false ]
		] forkAt: Processor userBackgroundPriority ]