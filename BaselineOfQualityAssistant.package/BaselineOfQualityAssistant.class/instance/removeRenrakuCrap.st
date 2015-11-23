pre-post-load-do-its
removeRenrakuCrap

	| qaPackage |
	
	qaPackage := (#QualityAssistant asPackageIfAbsent: [ ^ self ]).
	
	self removedExtendedCLasses do: [ :className |
		className asClassIfPresent: [ :class |
			class methods
    			select: [ :meth | meth package = qaPackage ]
    			thenDo: #removeFromSystem ] ].
    
	qaPackage mcWorkingCopy modified: false