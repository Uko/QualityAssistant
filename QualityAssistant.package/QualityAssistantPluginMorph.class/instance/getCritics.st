list-morph
getCritics

	^ entity
		ifNil: #()
		ifNotNil: [ entity critics asArray ]