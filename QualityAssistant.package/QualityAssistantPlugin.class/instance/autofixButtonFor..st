morphic-related-stuff
autofixButtonFor: aCritic
	
	^ IconicButton new
				target: aCritic;
				labelGraphic: (Smalltalk ui icons iconNamed: #smallRedoIcon);
				actionSelector: #fixAutomatically;
				color: Color transparent;
				helpText: 'Automatically resolve the issue';
				extent: 16 @ 16;
				borderWidth: 0;
				yourself