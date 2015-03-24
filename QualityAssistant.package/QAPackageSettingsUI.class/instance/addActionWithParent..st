building
addActionWithParent: parent

	^ GLMGenericAction new
		action: [ :b |
			(UIManager default 
				textEntry: 'Enter regex that will be used to match package names for auto-validation'
				title: 'Enter regex') ifNotNilDo: [ :regex |
					regexList add: regex.
					parent update ] ]; 
		icon: (Smalltalk ui icons iconNamed: #addIcon);
		title: 'Add a regular expression';
		yourself