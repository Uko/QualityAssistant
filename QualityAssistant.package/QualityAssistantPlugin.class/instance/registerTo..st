registration
registerTo: aModel

	aModel announcer
   	 
		when: NautilusMethodSelected 
		send: #selectionChanged: 
		to: self;
	
		when: NautilusClassSelected
		send: #selectionChanged:
		to: self.
		
	SystemAnnouncer uniqueInstance weak
		on: QualityChanged send: #qualityChanged: to: self
		
	