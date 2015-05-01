initialization
createButton

	^ IconicButton new
		target: self;
		labelGraphic: (Smalltalk ui icons iconNamed: #refreshIcon);
		actionSelector: #revalidateEntity;
		color: Color transparent;
		extent: 23 @ 58;
		helpText: 'Revalidate the entity';
		borderWidth: 0;
		yourself