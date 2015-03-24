accessing
filterList: anObject
	filterList := OrderedCollection withAll: anObject.
	self saveToFile.
	self initializePackages. 
	^ filterList