logging
logForceRefreshed: anEntity

	self logFile writeStreamDo: [ :str |
		str setToEnd.
		self logHeaderOn: str.
		str
			<< self refreshkey;
			<< self sepatator;
			<< anEntity name;
			lf ]