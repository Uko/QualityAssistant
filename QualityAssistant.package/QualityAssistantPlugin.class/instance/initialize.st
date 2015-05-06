initialization
initialize

	changeHandler := GLMAsyncTask new
		priority: Processor activePriority;
		doInBackground: [ morph entity: self currentEntity ];
		yourself