*qualityAssistant
critics
	^ self propertyValueAt: #critics ifAbsent: [ | critics |
		self propertyValueAt: #critics put: (critics := Set new).
		QA revalidateEntity: self.
		critics ]