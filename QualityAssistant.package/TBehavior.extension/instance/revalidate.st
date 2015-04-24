*qualityAssistant
revalidate
	| rule critics |
	rule := RBCompositeLintRule allGoodRules.
	critics := Set new.
	
	rule resetResult.
	
	[ rule checkClass: self ] on: Error do: [ ].
	rule leaves
		select: [ :subRule | subRule critics notEmpty ]
		thenDo: [ :subRule |
			critics add: (QACritic
				for: self
				by: subRule
				at: (subRule result selectionIntervalFor: self definition)) ].
			
	self propertyValueAt: #critics put: critics.
	
	QALogger logRevalidatedEntity: self andGot: critics. 
			
	^ critics