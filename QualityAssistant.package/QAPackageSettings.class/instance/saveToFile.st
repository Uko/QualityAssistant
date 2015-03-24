private
saveToFile

	self storageFile writeStreamDo: [ :str |
		str truncate.
		filterList do: [ :regex |
			str << regex; cr ] ]