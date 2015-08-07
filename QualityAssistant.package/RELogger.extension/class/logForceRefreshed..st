*qualityAssistant-logging
logForceRefreshed: anEntity

	self logFile writeStreamDo: [ :str |
		str setToEnd.
		self logHeaderOn: str.
		str
			<< self refreshkey;
			<< self separator;
			<< anEntity name;
			lf ]