logging
logRevalidatedEntity: anEntity andGot: aCritics

	self logHeader.
	self stream
		<< self revalidatekey;
		<< self sepatator;
		<< anEntity name;
		<< self sepatator.
	
	self logCriticsList: aCritics.
	
	self stream lf.
		