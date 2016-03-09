*qualityAssistantRecording
dataForQAR

	^ super dataForQAR
		at: #class put: self class name;
		at: #name put: self selector obfuscatedIfNecessary;
		at: #method put: (self methodForQAR ifNotNil: #dataForQAR);
		at: #sourceCode put:
			(Privacy sendSourceCode ifTrue: [ self sourceCode ]);
		yourself