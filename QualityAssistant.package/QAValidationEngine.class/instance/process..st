private
process: anEntity
	anEntity validateWith: (anEntity rules collect: #new).
	
	SystemAnnouncer uniqueInstance
		qualityChanged: anEntity