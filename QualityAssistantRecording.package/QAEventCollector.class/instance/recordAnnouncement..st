events
recordAnnouncement: anAnnouncement
	Privacy sendDiagnosticsAndUsageData ifTrue: [ self add: anAnnouncement stringified ]