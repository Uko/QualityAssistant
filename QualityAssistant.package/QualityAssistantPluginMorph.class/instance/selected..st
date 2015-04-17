list-morph
selected: index
	(index == 0 or:
	[ pluginDelegate isNil ]) ifTrue: [ ^ self ].
	
	
	(listMorph rawItemAtIndex: index) ifNotNilDo: [ :critic |
		pluginDelegate criticSelected: critic ]