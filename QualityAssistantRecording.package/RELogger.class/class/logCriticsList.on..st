logging
logCriticsList: aCritics on: str

	aCritics
		do: [ :crit | 
			str << crit rule class name ]
		separatedBy: [ 
			str space ]
		