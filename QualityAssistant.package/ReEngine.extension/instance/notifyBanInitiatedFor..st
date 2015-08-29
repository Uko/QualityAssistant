*qualityAssistant-announce
notifyBanInitiatedFor: aQACritic 

	self announce: (
		QAInitiateCriticBan new
			critic: aQACritic;
			yourself)
	