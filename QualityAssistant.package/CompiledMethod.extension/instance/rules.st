*qualityAssistant
rules
	^ (self methodClass rules
		copyWithoutAll: (self skippedRules collect: #asClass))
		addAll: (self addedRules collect: #asClass);
		yourself