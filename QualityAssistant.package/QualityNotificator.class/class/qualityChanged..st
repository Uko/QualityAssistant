announcement handling
qualityChanged: anAnnouncement 
	(GrowlMorph
		label: 'Critics'
		contents:
			'New ', anAnnouncement newCritics size asString,
			'; Fixed ', anAnnouncement oldCritics size asString)
		backgroundColor: ((
			Color green
				mixed: anAnnouncement oldCritics size /
					( anAnnouncement newCritics size + anAnnouncement oldCritics size)
				with: Color red) alpha: 0.4);
		actionBlock: [ anAnnouncement entity inspect ];
		openInWorld.