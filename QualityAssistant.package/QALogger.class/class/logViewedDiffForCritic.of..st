logging
logViewedDiffForCritic: aCritic of: anEntity

	self logHeader.
	self stream
		<< self diffkey;
		<< self sepatator;
		<< anEntity name;
		<< self sepatator;
		<< aCritic rule class name;
		lf.
		