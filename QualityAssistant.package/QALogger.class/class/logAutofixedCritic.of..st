logging
logAutofixedCritic: aCritic of: anEntity

	self logFile writeStreamDo: [ :str |
		str setToEnd.
		self logHeaderOn: str.
		str
			<< self autokey;
			<< self sepatator;
			<< anEntity name;
			<< self sepatator;
			<< aCritic rule class name;
			lf ]