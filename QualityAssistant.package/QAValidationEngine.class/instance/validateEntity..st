utility
validateEntity: anEntity
	
	queue add: anEntity.
	
	inProgress ifTrue: [ ^ self ].
	
	inProgress := true. 
	[
		job run.
		inProgress := false
	] forkAt: Processor userBackgroundPriority 