*qualityAssistant
asArray

| array index |
	array := Array new: self size.
	index := 0.
	self do: [:each | array at: (index := index + 1) put: each].
	^ array