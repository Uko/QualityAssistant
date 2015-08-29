*qualityAssistant-announce
notifyCriticsSeen: critics

	self announce: (
		QACriticsSeen new
			critics: critics;
			yourself)
	