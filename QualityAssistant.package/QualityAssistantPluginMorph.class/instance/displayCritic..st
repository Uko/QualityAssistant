listLine-morph
displayCritic: aCritic
	| listItem |
	listItem := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellPositioning: #center;
		hResizing: #shrinkWrap;
		vResizing: #spaceFill;
		cellInset: 5;
		color: Color transparent;
		yourself.
	
	listItem
		addMorph: aCritic title asStringMorph;
		addMorphBack: (self infoButtonFor: aCritic).
	
	aCritic isAutofixable not
		ifFalse: [ listItem addMorphBack: (self autofixButtonFor: aCritic) ].
	
	^ listItem