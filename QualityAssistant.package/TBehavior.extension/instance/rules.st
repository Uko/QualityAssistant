*qualityAssistant
rules
	^ (self package rules
		copyWithoutAll: (self skippedRules collect: #asClass))
		addAll: (self addedRules collect: #asClass);
		yourself