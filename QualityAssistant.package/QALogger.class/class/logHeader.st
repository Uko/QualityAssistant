logging
logHeader

	self stream
		setToEnd;
		<< self id;
		<< self sepatator;
		<< DateAndTime now asUnixMilli;
		<< self sepatator