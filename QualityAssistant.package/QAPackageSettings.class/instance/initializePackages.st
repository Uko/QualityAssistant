initialization
initializePackages

	packages := (RPackageOrganizer default packages
		select: [ :pack |
			filterList anySatisfy: [ :regex |
				regex asRegex matches: pack name ] ]) asSet