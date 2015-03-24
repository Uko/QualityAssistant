building
editActionWithParent: parent

	^ GLMGenericAction new
		action: [ :b |
			b selection ifNotNilDo: [ :reg |
				(UIManager default 
					textEntry: 'Edit regular expression'
					title: 'Edit regex'
					entryText: reg ) ifNotNilDo: [ :regex |
						regexList
							at: (regexList indexOf: reg)
							put: regex ].
						parent update ] ];
		icon: (Smalltalk ui icons iconNamed: #editIcon);
		title: 'Edit selected regex';
		yourself
	