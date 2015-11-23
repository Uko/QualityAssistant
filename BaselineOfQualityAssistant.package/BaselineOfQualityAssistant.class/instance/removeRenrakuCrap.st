pre-post-load-do-its
removeRenrakuCrap
    
  #ReCritic asClassIfPresent: [ :class | class removeProtocol: '*qualityAssistant' ].
  #ReEngine asClassIfPresent: [ :class | class removeProtocol: '*qualityAssistant' ].
    
	(#QualityAssistant asPackageIfAbsent: [ ^ self ]) mcWorkingCopy modified: false