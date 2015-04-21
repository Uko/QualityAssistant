initialization
initialize
	super initialize.
	
	critics := #().
	
	self
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellPositioning: #center;
		hResizing: #shrinkWrap;
		vResizing: #rigid;
		height: 58; "because it fits 3 row list without showing scrollbars"
		cellInset: 4;
		color: Color transparent.
		
	self initializeList.
	self initializeProgress.
	self initializeUpdateTask.
	
	self
		addMorphBack: listMorph;
		addMorphBack: self createButton.
		
	SystemAnnouncer uniqueInstance weak
		on: QualityChanged send: #qualityChanged: to: self