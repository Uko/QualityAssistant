display
display

   morph := (NewList on: self
		getItemsSelector: #getCritics
		setIndexSelector: #selected:
		getDisplaySelector: #displayCritic:)
		hideHScrollBarIndefinitely: true;
		height: 58;
		vResizing: #shrinkWrap; 
		hResizing: #spaceFill;
		yourself.
		
	morph adapter
		allowToSelectSelector: #allowToSelect;
		getIconSelector: #iconFor:at:;
		getIconMaxSizeSelector: #iconMaxSize;
		endOfInitialization.
		
	^ morph