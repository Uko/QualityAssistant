*qualityAssistant
validateWith: ruleCollection
	
	self critics removeAll.
	ruleCollection do: [ :rule |
		rule resetResult.
		[ rule checkMethod: self ] on: Error do: [ ].
		rule critics ifNotEmpty: [  
			self critics add: (QACritic
				for: self
				by: rule
				at: (rule result selectionIntervalFor: self definition)) ] ].
			
	^ self critics