logging
logViewedDiff: anAnnouncement

	self logFile writeStreamDo: [ :str |
		str setToEnd.
		self logHeaderOn: str.
		str
			<< self diffkey;
			<< self separator;
			<< anAnnouncement entity name;
			<< self separator;
			<< anAnnouncement critic rule class name;
			lf ]
