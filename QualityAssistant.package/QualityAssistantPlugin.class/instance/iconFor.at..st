morphic-related-stuff
iconFor: item at: anIndex
	| icon |
	icon := Smalltalk ui icons iconNamed: #smallHelpIcon.

	^  IconicButton new 
		target: item;
		actionSelector: #popRationaleUp;
		labelGraphic: icon ;
		color: Color transparent;
		extent: 12 @ 12;
		helpText: 'View rationale behind the rule';
		borderWidth: 0;
		yourself