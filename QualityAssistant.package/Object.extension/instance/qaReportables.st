*qualityAssistant
qaReportables

	^ (Pragma allNamed: #qaReportable from: self class to: Object) flatCollect: [ :pragma |
		pragma method valueWithReceiver: self arguments: #() ]