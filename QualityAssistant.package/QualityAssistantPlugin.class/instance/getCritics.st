morphic-related-stuff
getCritics
	^ self currentEntity ifNil: #() ifNotNilDo: [ :entity | 
		entity critics asArray ]