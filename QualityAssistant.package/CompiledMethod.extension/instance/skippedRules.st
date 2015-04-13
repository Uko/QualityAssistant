*qualityAssistant
skippedRules

	^ self pragmas
		select: [ :pragma |
			pragma keyword = #skipRule: ]
		thenCollect: [ :pragma |
			pragma arguments first ]