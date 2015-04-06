*qualityAssistant
addedRules

	^ (self pragmaAt: #addRules:)
		ifNil: [ Set new ]
		ifNotNilDo: [ :prag | prag arguments first
			collect: #asClass ]