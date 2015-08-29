logging
logSeenCritics: anAnnouncement 

	self logFile writeStreamDo: [ :str |
		str setToEnd.
		self logHeaderOn: str.
		str
			<< self seenkey;
			<< self separator;
			<< anAnnouncement entity name;
			<< self separator.
		
		self logCriticsList: anAnnouncement critics on: str.
		
		str lf ]
