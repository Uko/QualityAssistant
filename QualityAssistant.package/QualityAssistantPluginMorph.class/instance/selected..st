list-morph
selected: index 
	index == 0 ifTrue: [ ^ self ].
	(listMorph rawItemAtIndex: index) ifNotNilDo: [ :critic |
	critic hasSelection ifTrue: [ 
		self model codeTextMorph setSelection:
			critic selection ] ]