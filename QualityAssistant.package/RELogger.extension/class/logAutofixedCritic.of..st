*qualityAssistant-logging
logAutofixedCritic: aCritic of: anEntity

	self logFile writeStreamDo: [ :str |
		str setToEnd.
		self logHeaderOn: str.
		str
			<< self autokey;
			<< self separator;
			<< anEntity name;
			<< self separator;
			<< aCritic rule class name;
			lf ]