pre-post-load-do-its
uninstallObsoletePlugin

	#'QualityAssistantPlugin' asClassIfPresent: [ :pluginClass |
		pluginClass uninstall ]