initialization
initializeList

	listMorph := (NewNonfocusableList on: self
		getItemsSelector: #getCritics
		setIndexSelector: #selected:
		getDisplaySelector: #displayCritic:)
		hideHScrollBarIndefinitely: true;
		vResizing: #spaceFill; 
		hResizing: #spaceFill;
		yourself.
		
	listMorph adapter
		allowToSelectSelector: #allowToSelect;
		getIconSelector: #iconFor:at:;
		getIconMaxSizeSelector: #iconMaxSize;
		endOfInitialization.