*qualityAssistant-logging
logSeenCritics: aCritics of: anEntity

	self logFile writeStreamDo: [ :str |
		str setToEnd.
		self logHeaderOn: str.
		str
			<< self seenkey;
			<< self separator;
			<< anEntity name;
			<< self separator.
		
		self logCriticsList: aCritics on: str.
		
		str lf ]
