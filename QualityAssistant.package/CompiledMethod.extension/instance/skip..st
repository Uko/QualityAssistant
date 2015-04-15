*qualityAssistant
skip: aQACritic

	self methodClass compile:
		(self ast
			pragmas: self ast pragmas | {RBPragmaNode
				selector: #skipRule:
				arguments: {RBLiteralNode value: aQACritic rule class name}};
			yourself) formattedCode