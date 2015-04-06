utility
validateEntity: anEntity
	queue add: anEntity.
	 
	inProgress ifTrue: [ ^ self ].  	
	inProgress := true. 
	[
		[ job run ] ensure: [  
			inProgress := false ]
	] forkAt: Processor userBackgroundPriority