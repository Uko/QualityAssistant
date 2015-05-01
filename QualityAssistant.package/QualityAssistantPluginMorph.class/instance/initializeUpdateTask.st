initialization
initializeUpdateTask

	updateTask := GLMAsyncTask new
		priority: Processor userBackgroundPriority - 1;
		doInBackground: [
			critics := entity critics asArray sort: [ :a :b | a title < b title ] ];
		onCompleted: [
			listMorph
				updateItems;
				deselectAll.
			self removeMorph: progressMorph.
			self addMorphFront: listMorph ];
		yourself