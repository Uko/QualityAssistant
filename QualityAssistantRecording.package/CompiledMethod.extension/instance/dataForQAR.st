*qualityAssistantRecording
dataForQAR

	^ super dataForQAR
		at: #class put: self class name;
		at: #name put: self selector obfuscatedIfNecessary;
		at: #methodClass put: (self methodClass ifNotNil: #dataForQAR);
		at: #sourceCode put:
			(Privacy sendSourceCode ifTrue: [ self sourceCode ]);
		yourself