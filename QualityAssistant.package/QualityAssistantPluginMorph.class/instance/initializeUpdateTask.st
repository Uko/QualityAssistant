initialization
initializeUpdateTask

	updateTask := GLMAsyncTask new
		doInBackground: [
			critics := entity critics asArray sort: [ :a :b | a title < b title ] ];
		onCompleted: [
			listMorph
				updateItems;
				deselectAll.
			self removeMorph: textMorph.
			self addMorphFront: listMorph ];
		yourself