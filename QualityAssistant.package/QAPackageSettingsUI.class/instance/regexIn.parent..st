building
regexIn: composite parent: parent

	composite list
		title: 'Package Regexs';
		display: [ :a | regexList ];
		
		addAction: (self addActionWithParent: parent);
		addAction: (self editActionWithParent: parent);
		addAction: (self removeActionWithParent: parent)
		