icons
icon

	^ icon ifNil: [ icon :=  Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self iconContents readStream) ].