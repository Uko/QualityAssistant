morphic-related-stuff
selected: index 
	index == 0 ifTrue: [ ^ self ].
	self model codeTextMorph setSelection: (
	(self currentEntity critics
		at: (morph rawItemAtIndex: index))
		ifNil: [ 0 to: 0 ])