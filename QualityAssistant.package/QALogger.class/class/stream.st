lazy vars
stream

	^ stream ifNil: [ stream := self logFile writeStream ]
 