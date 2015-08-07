*qualityAssistant-logging
logSkippedCritic: aCritic of: anEntity on: aLevelEntity

	self logFile writeStreamDo: [ :str |
		str setToEnd.
		self logHeaderOn: str.
		str
			<< self skipkey;
			<< self separator;
			<< anEntity name;
			<< self separator;
			<< aCritic rule class name;
			<< self separator;
			<< aLevelEntity name;
			lf ]