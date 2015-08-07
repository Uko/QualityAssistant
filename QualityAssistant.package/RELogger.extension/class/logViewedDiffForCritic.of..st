*qualityAssistant-logging
logViewedDiffForCritic: aCritic of: anEntity

	self logFile writeStreamDo: [ :str |
		str setToEnd.
		self logHeaderOn: str.
		str
			<< self diffkey;
			<< self separator;
			<< anEntity name;
			<< self separator;
			<< aCritic rule class name;
			lf ]
