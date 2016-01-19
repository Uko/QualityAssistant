*qualityAssistantRecording
asCollectedEntity
	| newTree |
	
	newTree := self copyInContext: Dictionary new.
	newTree instVarNamed: #selector put:
		(GlobalIdentifier uniqueInstance obfuscateIfNecessary: self selector).
	self methodClass ifNotNil: [ :class |
		newTree compilationContext: (CompilationContext default
			class: class asCollectedRingDefinition);
			yourself ].
		
	Privacy sendSourceCode ifFalse: [ 
		newTree
			arguments: #();
			body: RBSequenceNode new;
			pragmas: #();
			source: '' ].
	
	newTree
		propertyAt: #obfuscationKey
		put: Privacy sendEntityNames not.
		
	^ newTree 