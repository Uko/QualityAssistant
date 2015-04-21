initialization
initializeList

	listMorph := (NewNonfocusableList on: self
		getItemsSelector: #getCritics
		setIndexSelector: #selected:
		getDisplaySelector: #displayCritic:)
		hideHScrollBarIndefinitely: true;
		vResizing: #spaceFill; 
		hResizing: #spaceFill;
		color: Smalltalk ui theme backgroundColor;
		yourself.
		
	listMorph adapter
		allowToSelectSelector: #allowToSelect;
		getIconSelector: #iconFor:at:;
		getIconMaxSizeSelector: #iconMaxSize;
		endOfInitialization.