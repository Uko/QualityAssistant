list-morph
getCritics

	critics ifNotNil: [ ReEngine uniqueInstance notifyCriticsSeen: critics ].
	^ critics