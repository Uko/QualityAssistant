logging
logBannedCritic: anAnnouncement

	self logFile writeStreamDo: [ :str |
		str setToEnd.
		self logHeaderOn: str.
		str
			<< self skipkey;
			<< self separator;
			<< anAnnouncement entity name;
			<< self separator;
			<< anAnnouncement critic rule class name;
			<< self separator;
			<< anAnnouncement entityBanLevel name;
			lf ]