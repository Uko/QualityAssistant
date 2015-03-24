building
buttonsIn: composite parent: parent

	composite actionList
		act: [ (UIManager default
			confirm: 'All your changes will be lost'
			label: 'Are you sure you want to cancel?') ifTrue: [
				parent close ] ]
		entitled: 'Cancel';
		
		act: [ :list :entity | (UIManager default
			confirm: 'The changes you''ve made will be saved and applied to all the new images that you will use.'
			label: 'Are you sure you want to Apply the changes?') ifTrue: [
				entity filterList: regexList.
					parent close ] ]
			entitled: 'Apply'

	