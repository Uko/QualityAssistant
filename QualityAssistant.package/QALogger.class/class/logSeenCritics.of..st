logging
logSeenCritics: aCritics of: anEntity

	self logHeader.
	self stream
		<< self seenkey;
		<< self sepatator;
		<< anEntity name;
		<< self sepatator.
	
	self logCriticsList: aCritics.
	
	self stream lf.
		