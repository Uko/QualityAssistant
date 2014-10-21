*qualityAssistant
criticsOf: anEntity added: newCritics removed: oldCritics

	self announce: (QualityChanged
		of: anEntity
		added: newCritics
		removed: oldCritics)