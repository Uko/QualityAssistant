list-morph
getCritics

	critics ifNotEmpty: [ RELogger logSeenCritics: critics of: entity ].
	^ critics