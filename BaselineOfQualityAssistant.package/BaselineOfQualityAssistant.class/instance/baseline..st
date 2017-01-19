api projectSpec
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				preLoadDoIt: #preLoadDoIt;
				package: 'QualityAssistant' with: [ spec requires: 'Renraku' ];
				package: 'QualityAssistant-Test' with: [ spec requires: 'QualityAssistant' ];
				package: 'QualityAssistantRecording' with: [ spec requires: 'QualityAssistant' ];
				postLoadDoIt: #installPlugin.
			spec baseline: 'Renraku' with: [ spec repository: 'github://Uko/Renraku:v0.14.10' ] ]