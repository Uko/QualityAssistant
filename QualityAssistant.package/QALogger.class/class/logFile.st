lazy vars
logFile

	^ ((FileLocator preferences / #pharo) ensureCreateDirectory / #qalog) ensureCreateFile 