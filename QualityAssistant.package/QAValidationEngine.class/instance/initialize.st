initialization
initialize
	
	rules := RBCompositeLintRule allGoodRules.
	queue := OrderedCollection new.
	
	job := Job new
		title: 'Validating entities';
		block: [ 
			[ queue notEmpty ] whileTrue: [
				JobProgress title: 'Validating entities: ', queue size asString.
				self process: (queue removeFirst).
				Processor yield ] ];
		yourself