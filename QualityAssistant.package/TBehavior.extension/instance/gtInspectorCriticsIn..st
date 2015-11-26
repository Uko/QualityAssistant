*qualityAssistant
gtInspectorCriticsIn: composite
	"This provides a list of all critics"
	<gtInspectorPresentationOrder: 20>
	| qaReportables |
	
	composite list 
		when: [ QASettings inspectorPluggin and: [ (qaReportables := self qaReportables) notEmpty ] ];
		title: [ qaReportables size asString, (' critic' asPluralBasedOn: qaReportables) ];
		titleIcon: [ CircleMorph new
			extent: 16 @ 16;
			borderWidth: 0;
			color: Color red darker darker;
			addMorphCentered:
				(qaReportables size asStringMorph
					color: Color white;
					emphasis: 1;
					yourself);
			iconOrThumbnail ];
		display: [ qaReportables ];
		icon: #icon;
		format: #title;
		tags: [ :critic | { critic rule group } ]