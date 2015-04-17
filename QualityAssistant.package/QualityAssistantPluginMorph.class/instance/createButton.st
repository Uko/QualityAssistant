initialization
createButton

	^ IconicButton new
		target: self;
		labelGraphic: (Smalltalk ui icons iconNamed: #sketchRefreshIcon);
		actionSelector: #revalidateEntity;
		color: Color transparent;
		extent: 58 @ 58;
		helpText: 'Revalidate the entity';
		borderWidth: 0;
		yourself