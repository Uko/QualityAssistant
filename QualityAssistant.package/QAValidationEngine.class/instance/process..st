private
process: anEntity
	anEntity validateWith: rules.
	
	SystemAnnouncer uniqueInstance
		qualityChanged: anEntity