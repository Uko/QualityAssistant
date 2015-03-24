announcement handling
packageAdded: aRPackageCreated
	 
	(self matchesPackage: aRPackageCreated package) ifTrue: [ 
		packages add: aRPackageCreated package ]