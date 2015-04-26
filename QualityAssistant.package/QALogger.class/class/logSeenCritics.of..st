logging
logSeenCritics: aCritics of: anEntity

	self logFile writeStreamDo: [ :str |
		str setToEnd.
		self logHeaderOn: str.
		str
			<< self seenkey;
			<< self sepatator;
			<< anEntity name;
			<< self sepatator.
		
		self logCriticsList: aCritics on: str.
		
		str lf ]
