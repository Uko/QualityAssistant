initialization
initializeProgress

	progressMorph := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		cellInset: 5;
		color: Smalltalk ui theme backgroundColor;
		yourself.
	
	progressMorph
		addMorph: (LoadingMorph new 
			applyState: SmallCogInitialState new;
			yourself);
		addMorph: ('     Updating critics...' asMorph
			color: Smalltalk ui theme disabledTextColor;
			yourself)
	 