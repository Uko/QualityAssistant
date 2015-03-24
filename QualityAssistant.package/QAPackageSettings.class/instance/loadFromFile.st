private
loadFromFile

	self storageFile readStreamDo: [ :str |
		filterList := str contents substrings: String crlf ].