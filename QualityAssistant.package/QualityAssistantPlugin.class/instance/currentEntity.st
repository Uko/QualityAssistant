properties
currentEntity

	^ self model selectedClass ifNotNilDo: [ :class |
		self model selectedMethod ifNil: [ class ] ] 