*qualityAssistant
gtInspectorCriticsIn: composite
	"This provides a list of all critics"
	<gtInspectorPresentationOrder: 20>
	composite list 
		when: [ self hasCritics ];
		title: self numberOfCritics asString, (' critic' asPluralBasedOn: self critics);
		color: Color red;
		display: [ self critics keys ];
		format: #name;
		tags: [ :each | { each category } ]