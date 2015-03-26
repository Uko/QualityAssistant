instance creation
new
	"I'm a singleton…"
	^ instance ifNil: [ instance := super new ]