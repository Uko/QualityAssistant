api projectSpec
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				preLoadDoIt: #unstallObsoletePlugin;
				package: 'QualityAssistant' with: [ spec requires: 'Renraku' ];
				postLoadDoIt: #installPlugin.
			spec baseline: 'Renraku' with: [ spec repository: 'github://Uko/Renraku:logging' ] ]
