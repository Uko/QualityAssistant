*qualityAssistant
skip: aCritic

	self class compile: (RBMethodNode selector: #skippedRules body: (
		RBSequenceNode statements: {
			RBReturnNode value: (
				RBLiteralNode value: (
					self skippedRules | {aCritic rule class name}) asArray) })) formattedCode.
	
	QA revalidateEntity: self.