*qualityAssistant
critics
	^ self propertyValueAt: #critics ifAbsent: [ self revalidate ]