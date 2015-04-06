*qualityAssistant
rules
	^ (self package rules
		copyWithoutAll: (self skippedRules))
		addAll: (self addedRules);
		yourself