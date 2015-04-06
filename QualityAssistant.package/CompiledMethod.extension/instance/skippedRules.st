*qualityAssistant
skippedRules

	^ (self pragmaAt: #skipRules:)
		ifNil: [ Set new ]
		ifNotNilDo: [ :prag | prag arguments first
			collect: #asClass ]