api projectSpec
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec package: 'QualityAssistant';
		postLoadDoIt: #installPlugin ] 