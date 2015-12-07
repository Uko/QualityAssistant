*qualityAssistantRecording
stringified
	^ super stringified
		critics: (critics collect: [ :c | c rule class name ]);
		yourself