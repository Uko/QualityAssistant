logging
logSkippedCritic: aCritic of: anEntity on: aLevelEntity

	self logFile writeStreamDo: [ :str |
		str setToEnd.
		self logHeaderOn: str.
		str
			<< self skipkey;
			<< self sepatator;
			<< anEntity name;
			<< self sepatator;
			<< aCritic rule class name;
			<< self sepatator;
			<< aLevelEntity name;
			lf ]