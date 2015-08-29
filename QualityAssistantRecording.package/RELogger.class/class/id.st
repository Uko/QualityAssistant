lazy vars
id
	^ id ifNil: [ id := UUID new ]