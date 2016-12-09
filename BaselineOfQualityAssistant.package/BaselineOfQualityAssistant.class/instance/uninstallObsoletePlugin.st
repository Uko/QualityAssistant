pre-post-load-do-its
uninstallObsoletePlugin
	self class environment
		at: #QualityAssistantPlugin
		ifPresent: [ :pluginClass | pluginClass uninstall ]