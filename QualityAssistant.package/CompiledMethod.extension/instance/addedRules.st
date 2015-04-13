*qualityAssistant
addedRules

	^ self pragmas
		select: [ :pragma |
			pragma keyword = #addRule: ]
		thenCollect: [ :pragma |
			pragma arguments first ]