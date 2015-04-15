*qualityAssistant
instrumentsIcon
	^ icons
			at: #'instrumentsIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self instrumentsIconContents readStream) ].