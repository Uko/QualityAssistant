*qualityAssistant
rules
	^ self definedClasses
		detect: [ :class |
			class inheritsFrom: QARuleSetup ]
		ifFound: #ruleForPackage
		ifNone: [Set new ]