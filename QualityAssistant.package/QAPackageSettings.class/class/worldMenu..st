menu
worldMenu: aBuilder
	<worldMenu>
	
	(aBuilder item: #'Quality Assistant')
		action: [ QA settingsUI ];
		order: 0.1;
		help: 'Quality Assistant Filter';
		icon: QualityAssistant icon