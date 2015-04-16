*qualityAssistant
sketchRefreshIcon
	^ icons
			at: #'sketchRefreshIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self sketchRefreshIconContents readStream) ].