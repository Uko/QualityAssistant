initialization
initialize

	self unSubscribe.
	rules := RBCompositeLintRule allGoodRules.
	self subscribe.