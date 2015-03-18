announcement handling
updateMorph
	morph ifNil: [ ^ self ].
	morph
		updateItems;
		deselectAll. 
	"morph height: self currentEntity numberOfCritics * 19 + 1"