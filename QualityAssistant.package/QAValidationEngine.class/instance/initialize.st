initialization
initialize
	
	rules := RBCompositeLintRule allGoodRules.
	queue := WaitfreeQueue new.
	inProgress := false.
	
	job := Job new
		title: 'Validating entities';
		block: [ 
			| lastUpdate msecs |
			lastUpdate := 0.
			msecs := 500.
			
			[ queue isEmpty ] whileFalse: [
				self process: (queue nextOrNil).
				
				(Time millisecondsSince: lastUpdate) >= msecs ifTrue: [
					JobProgress title: 'Validating entities: ', queue size asString.
					lastUpdate := Time millisecondClockValue.
					Processor yield ] ] ];
		yourself 