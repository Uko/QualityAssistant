*qualityAssistantRecording
dataForQAR

	^ super dataForQAR
		at: #critics put:
			(critics collect: #dataForQAREntityless as: Array);
		yourself