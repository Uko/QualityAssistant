*qualityAssistant
validateWith: aCompRule
	
	self critics removeAll.
	aCompRule resetResult.
	[ aCompRule checkClass: self ] on: Error do: [ ].
	aCompRule leaves
		select: [ :rule | rule critics notEmpty ]
		thenDo: [ :rule |
			self critics add: (QACritic
				for: self
				by: rule
				at: (rule result selectionIntervalFor: self definition)) ].
			
	^ self critics