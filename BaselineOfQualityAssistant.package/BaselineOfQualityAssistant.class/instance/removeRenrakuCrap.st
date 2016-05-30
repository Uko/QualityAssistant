pre-post-load-do-its
removeRenrakuCrap
	
	self removedExtendedClassesPerPackage keysAndValuesDo: [ :packageName :classNames |
		| package |
		package := (#QualityAssistant asPackageIfAbsent: [ ^ self ]).
	
	classNames do: [ :className |
		className asClassIfPresent: [ :class |
			class protocols
				select: [ :prot | prot asLowercase beginsWith: package methodCategoryPrefix ]
				thenDo: [ :prot | class removeProtocol: prot ] ] ].
    
	package mcWorkingCopy modified: false
 ]