morphic-related-stuff
iconFor: item at: anIndex
	^  IconicButton new 
		target: item;
		actionSelector: #popRationaleUp;
		labelGraphic: item icon ;
		color: Color transparent;
		extent: 12 @ 12;
		helpText: 'View rationale behind the rule';
		borderWidth: 0;
		yourself