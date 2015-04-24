logging
logCriticsList: aCritics

	aCritics
		do: [ :crit | 
			self stream << crit rule class name ]
		separatedBy: [ 
			self stream space ]
		