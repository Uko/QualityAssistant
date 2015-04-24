logging
logAutofixedCritic: aCritic of: anEntity

	self logHeader.
	self stream
		<< self autokey;
		<< self sepatator;
		<< anEntity name;
		<< self sepatator;
		<< aCritic rule class name;
		lf.
		