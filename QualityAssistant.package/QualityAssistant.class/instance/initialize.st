initialization
initialize

	self unSubscribe.
	settings := QAPackageSettings new.
	validationEngine := QAValidationEngine new.
	self subscribe.