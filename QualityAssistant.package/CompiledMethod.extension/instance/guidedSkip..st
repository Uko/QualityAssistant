*qualityAssistant
guidedSkip: aCritic

	| candidates |
	
	candidates := { self . self methodClass }.
	
	(UIManager default
		chooseFrom: (candidates collect: #name)
		values: candidates
		title: 'On which level do you want to skip the rule?')
			ifNotNilDo: [ :entity | entity skip: aCritic ]