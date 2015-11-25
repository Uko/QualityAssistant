task handling
setTaskAction

	updateTask
		doInBackground: [
			critics := entity
				ifNil: [ #() ]
				ifNotNil: [
					entity qaReportables asArray sort: [ :a :b | a title < b title ] ] ];
		onCompleted: [ self taskCompleted ]