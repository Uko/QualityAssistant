building
compose
	self title: [ :entity |
		(regexList asArray = entity filterList
			ifTrue: [ '' ]
			ifFalse: [ '(modified) ' ]), 
		'Quality Assistant Packages Filter' ].
	self tabulator with: [ :browser |
		browser
			row: [ :r | r
				column: #regex;
				column: #packages ];
			row: #buttons size: 40.
		
		browser transmit
			to: #regex;
			andShow: [ :a | self regexIn: a parent: browser ].
			
		browser transmit
			to: #packages;
			andShow: [ :a | self packagesIn: a ].
		
		browser transmit
			to: #buttons;
			andShow: [ :a | self buttonsIn: a parent: browser ] ]