*qualityAssistant
actions

	^ super actions copyWith: (QANautilusAction new
			icon: (Smalltalk ui icons iconNamed: #repairIcon);
			description: 'Automatically resolve the issue';
			action: [ :critic |
				| change |
				change := critic change.

				ReSystemAnnouncer uniqueInstance notifyViewedDiffFor: critic of: critic target.
	
				(TextModel new
					title: 'Apply the proposed changes?';
					extent: 800@600;
					text: change diffedText;
					disable;
					openDialogWithSpec)
						okAction: [ ReSystemAnnouncer uniqueInstance
								notifyCritic: critic
								AutoFixedFor: critic target.
								change execute ];
			centered ];
			yourself)