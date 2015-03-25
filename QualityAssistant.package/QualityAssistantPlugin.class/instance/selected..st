morphic-related-stuff
selected: index 
	index == 0 ifTrue: [ ^ self ].
	(morph rawItemAtIndex: index) ifNotNilDo: [ :critic |
	self model codeTextMorph setSelection: (
	(self currentEntity critics
		at: critic)
		ifNil: [ 0 to: 0 ]) ]