initialization
initialize

	self unSubscribe.
	self initRules.
	settings := QAPackageSettings new.
	self subscribe.