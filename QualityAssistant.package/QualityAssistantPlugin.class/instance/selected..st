morphic-related-stuff
selected: index 
	index == 0 ifTrue: [ ^ self ].
	(morph rawItemAtIndex: index) ifNotNilDo: [ :critic |
	critic hasSelection ifTrue: [ 
		self model codeTextMorph setSelection:
			critic selection ] ]