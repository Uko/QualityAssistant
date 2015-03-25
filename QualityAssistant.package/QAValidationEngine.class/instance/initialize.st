initialization
initialize
	
	rules := RBCompositeLintRule allGoodRules.
	queue := OrderedCollection new.
	inProgress := false.
	
	job := Job new
		title: 'Validating entities';
		block: [ 
			| lastUpdate msecs |
			lastUpdate := 0.
			msecs := 500.
			
			[ queue notEmpty ] whileTrue: [
				self process: (queue removeFirst).
				
				(Time millisecondsSince: lastUpdate) >= msecs ifTrue: [
					JobProgress title: 'Validating entities: ', queue size asString.
					lastUpdate := Time millisecondClockValue.
					Processor yield ] ] ];
		yourself 