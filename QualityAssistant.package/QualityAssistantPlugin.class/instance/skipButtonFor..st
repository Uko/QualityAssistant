morphic-related-stuff
skipButtonFor: aCritic
	
	^ IconicButton new
		target: aCritic;
		labelGraphic: (Smalltalk ui icons iconNamed: #smallCancelIcon);
		actionSelector: #skip;
		color: Color transparent;
		helpText: 'Skip this critic';
		extent: 16 @ 16;
		borderWidth: 0;
		yourself