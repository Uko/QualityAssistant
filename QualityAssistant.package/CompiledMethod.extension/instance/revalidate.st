*qualityAssistant
revalidate

	| rules critics |
	rules := self rules.
	critics := Set new.
	rules
		do: [ :ruleClass | 
			| rule |
			rule := ruleClass new.
			rule resetResult.
			[ rule checkMethod: self ] on: Error do: [  ].
			
			rule critics ifNotEmpty: [
				critics add: (QACritic
					for: self
					by: rule
					at: (rule result selectionIntervalFor: self definition)) ] ].
	
	self propertyValueAt: #critics put: critics.
	
	^ critics