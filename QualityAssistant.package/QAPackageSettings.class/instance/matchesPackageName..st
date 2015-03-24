utility
matchesPackageName: aName

	^ filterList anySatisfy: [ :regex |
				regex asRegex matches: aName ]