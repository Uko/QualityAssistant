pre-post-load-do-its
removeRenrakuCrap
    
  #ReCritic asClassIfPresent: [ :class | class removeProtocol: '*qualityAssistant' ].
    
	#QualityAssistant asPackage mcWorkingCopy modified: false