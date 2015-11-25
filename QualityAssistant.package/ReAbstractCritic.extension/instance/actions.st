*qualityAssistant
actions 

	^ { 
		QANautilusAction new
			icon: (Smalltalk ui icons iconNamed: #smallQuestionIcon);
			description: 'View rationale behind the rule';
			action: #popDescriptionUp;
			yourself .
		QANautilusAction new
			icon: (Smalltalk ui icons iconNamed: #smallCancelIcon);
			description: 'Ban this rule';
			action: #guidedSkip;
			yourself	
	 }