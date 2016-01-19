pre-post-load-do-its
removeExtensionMethods

	| qaPackage |
	
	qaPackage := (#QualityAssistant asPackageIfAbsent: [ ^ self ]).
	
	qaPackage extendedClasses do: [ :class |
			class protocols
    			select: [ :prot | prot asLowercase beginsWith: qaPackage methodCategoryPrefix ]
    			thenDo: [ :prot | class removeProtocol: prot ] ].
    
	qaPackage mcWorkingCopy modified: false