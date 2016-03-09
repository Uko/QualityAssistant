events
recordAnnouncement: anAnnouncement
	Privacy sendDiagnosticsAndUsageData ifFalse: [ ^ self ].	
	(anAnnouncement respondsTo: #dataForQAR) ifTrue: [
		[ self add: anAnnouncement dataForQAR ]
			on: Error
			do: [ :error |
				QARecordingSettings showErrors ifTrue: [ error pass ] ] ]