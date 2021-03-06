pre-post-load-do-its
removeCrapOf: aPackageName from: classNames 
	
	| package |
	package := (aPackageName asPackageIfAbsent: [ ^ self ]).
		
	classNames do: [ :className |
		self class environment
			at: className
			ifPresent: [ :class |
				class protocols
					select: [ :prot |
						prot asLowercase beginsWith: package methodCategoryPrefix ]
					thenDo: [ :prot |
						class removeProtocol: prot ] ] ].
    
	package mcWorkingCopy modified: false