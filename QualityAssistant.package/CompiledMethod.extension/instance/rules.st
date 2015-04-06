*qualityAssistant
rules
	^ (self methodClass rules
		copyWithoutAll: (self skippedRules))
		addAll: (self addedRules);
		yourself