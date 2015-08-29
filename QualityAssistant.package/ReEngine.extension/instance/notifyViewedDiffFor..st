*qualityAssistant-announce
notifyViewedDiffFor: aQACritic 

	self announce: (
		QAViewedDiff new
			critic: aQACritic;
			yourself)
	