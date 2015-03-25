initialization
initialize
	
	rules := RBCompositeLintRule allGoodRules.
	queue := OrderedCollection new.
	
	job := Job new
		title: 'Validating entities';
		block: [ 
			[ queue notEmpty ] whileTrue: [
				self process: (queue removeFirst) ] ];
		yourself