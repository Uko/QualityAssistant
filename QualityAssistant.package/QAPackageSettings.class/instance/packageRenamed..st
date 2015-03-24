announcement handling
packageRenamed: aRPackageRenamed 
	
	(self matchesPackageName: aRPackageRenamed oldName) ifTrue: [ 
		packages remove: aRPackageRenamed package ifAbsent: [ ] ].
	
	(self matchesPackageName: aRPackageRenamed newName) ifTrue: [ 
		packages add: aRPackageRenamed package ].