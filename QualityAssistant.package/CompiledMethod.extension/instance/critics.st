*qualityAssistant
critics
	^ self propertyValueAt: #critics ifAbsent: [ | critics |
		self propertyValueAt: #critics put: (critics := Dictionary new).
		QA revalidateEntity: self.
		critics ]