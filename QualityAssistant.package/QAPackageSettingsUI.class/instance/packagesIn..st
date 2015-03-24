building
packagesIn: composite

	composite list 
		title: 'Matched Packages';
		display: [
			(RPackageOrganizer default packages
			select: [ :pack |
			regexList asArray anySatisfy: [ :regex |
				regex asRegex matches: pack name ] ]) ];
		format: [ :each | each name ]