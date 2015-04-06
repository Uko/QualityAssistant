morphic-related-stuff
displayCritic: aCritic
	| m |

	m := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellPositioning: #center;
		hResizing: #shrinkWrap;
		vResizing: #spaceFill;
		cellInset: 5;
		color: Color transparent";
		yourself".

		true | false = true.	
	
	m
		addMorph:  (aCritic title asStringMorph 
			font: StandardFonts defaultFont;
			"emphasis: 4;"
			yourself);
		addMorphBack: (IconicButton new
			target: aCritic;
			labelGraphic: (Smalltalk ui icons iconNamed: #smallQuestionIcon);
			actionSelector: #popDescriptionUp;
			color: Color transparent;
			extent: 16 @ 16;
			borderWidth: 0;
			yourself). 
			
	^ m
