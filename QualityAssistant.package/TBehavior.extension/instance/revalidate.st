*qualityAssistant
revalidate

	| rules critics manifest builder |
	
	builder := TheManifestBuilder new.
	manifest := builder manifestOf: self.
		
	rules := RBCompositeLintRule allGoodRules leaves.
	critics := Set new.
	rules
		reject: [ :rule |
			manifest isNotNil and:
			[ builder skipsRule: rule for: self ] ]
		thenDo: [ :rule |
			rule resetResult.
			[ rule checkClass: self ] on: Error do: [  ].
			rule critics ifNotEmpty: [
				critics add: (QACritic
					for: self
					by: rule
					at: (rule result selectionIntervalFor: self definition)) ].
			Processor yield ].
	
	self propertyValueAt: #critics put: critics.

	QALogger logRevalidatedEntity: self andGot: critics. 	

	^ critics