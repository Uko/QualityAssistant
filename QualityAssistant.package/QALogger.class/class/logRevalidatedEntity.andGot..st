logging
logRevalidatedEntity: anEntity andGot: aCritics

	self logFile writeStreamDo: [ :str |
		str setToEnd.
		self logHeaderOn: str.
		str
			<< self revalidatekey;
			<< self sepatator;
			<< anEntity name;
			<< self sepatator.

		self logCriticsList: aCritics on: str.
		
		str lf ]
