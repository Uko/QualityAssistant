pre-post-load-do-its
removeRenrakuCrap
	
	self removedExtendedClassesPerPackage keysAndValuesDo: [ :packageName :classNames |
		self removeCrapOf: packageName from: classNames ]