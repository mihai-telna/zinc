testing
testGzipWriteRead
	| data written read |
	data := (String loremIpsum: 16*1024) utf8Encoded.
	written := ByteArray streamContents: [ :out |
		| stream chunkedStream |
		stream := GZipWriteStream on: (chunkedStream := ZnChunkedWriteStream on: out).
		stream nextPutAll: data.
		stream finish.
		chunkedStream finish ].
	read := (GZipReadStream on: (ZnChunkedReadStream on: written readStream)) upToEnd.
	self assert: read equals: data