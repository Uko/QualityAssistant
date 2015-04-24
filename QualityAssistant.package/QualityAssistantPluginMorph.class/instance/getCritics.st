list-morph
getCritics

	critics ifNotEmpty: [ QALogger logSeenCritics: critics of: entity ].
	^ critics