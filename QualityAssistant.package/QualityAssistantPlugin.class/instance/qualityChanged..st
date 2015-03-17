announcement handling
qualityChanged: anAnnouncement 

	anAnnouncement entity == self currentEntity ifTrue: [ 
		self updateMorph ]