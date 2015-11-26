*qualityAssistant
spotterQACriticsFor: aStep
	<spotterOrder: 0>
	| qaReportables |
	
	"A way to disable plugin from prefs"
	qaReportables := QASettings spotterPlugin
		ifTrue: [ self qaReportables asArray ]
		ifFalse: [ #() ].
	
	aStep listProcessor
		title: 'QA Critics';
		items: [ qaReportables ];
		itemName: #title;
		itemIcon: #icon;
		filter: GTFilterSubstring