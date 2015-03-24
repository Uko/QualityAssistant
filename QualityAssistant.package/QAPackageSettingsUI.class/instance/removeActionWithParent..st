building
removeActionWithParent: parent

	^ GLMGenericAction new
		action: [ :b |
			b selection ifNotNilDo: [ :reg |
				regexList remove: reg.
				parent update ] ]; 
		icon: (Smalltalk ui icons iconNamed: #deleteIcon);
		title: 'Remove selected regex from the list';
		yourself