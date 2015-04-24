logging
logForceRefreshed: anEntity

	self logHeader.
	self stream
		<< self refreshkey;
		<< self sepatator;
		<< anEntity name;
		lf.
		