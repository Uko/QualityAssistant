as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'QualityAssistantRecording' with: [ spec requires: 'QualityAssistant' ].
			spec project: 'QualityAssistant' with: [
  				spec
    					className: 'ConfigurationOfQualityAssistant';
    					version: #stable;
    					repository: 'http://smalltalkhub.com/mc/YuriyTymchuk/Configuration/main' ] ]