*qualityAssistant
critics
	^ self propertyValueAt: #critics ifAbsent: [ 
		self propertyValueAt: #critics put: Dictionary new ]