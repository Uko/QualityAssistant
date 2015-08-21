pre-post-load-do-its
unstallObsoletePlugin

	#'QualityAssistantPlugin' asClassIfPresent: [ :pluginClass |
		pluginClass uninstall ]