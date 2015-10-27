pre-post-load-do-its
removeRenrakuCrap

	#QualityAssistant asPackage extensionMethods
		select: [ :m | m classBinding key == #ReCritic ]
		thenDo: #removeFromSystem.
	#QualityAssistant asPackage mcWorkingCopy modified: false