logging
logViewedDiffForCritic: aCritic of: anEntity

	self logFile writeStreamDo: [ :str |
		str setToEnd.
		self logHeaderOn: str.
		str
			<< self diffkey;
			<< self sepatator;
			<< anEntity name;
			<< self sepatator;
			<< aCritic rule class name;
			lf ]
