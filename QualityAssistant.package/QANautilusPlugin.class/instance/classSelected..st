announcement handling
classSelected: anAnnouncement

	anAnnouncement class == NautilusClassSelected ifFalse: [ ^ self ].

	currentEntity := anAnnouncement selectedClass.
	self updateMorph  