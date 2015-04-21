actions
updateList

	entity ifNil: [ ^ self ].

	self removeMorph: listMorph.
	self addMorphFront: progressMorph.
	
	updateTask execute