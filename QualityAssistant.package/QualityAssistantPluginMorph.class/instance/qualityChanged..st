announcement handling
qualityChanged: anAnnouncement 

	anAnnouncement entity == entity ifTrue: [ 
		self updateList ]