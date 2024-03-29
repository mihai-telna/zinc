accessing
authTokenForUrl: urlObject method: method
	| result |
	result := WriteStream on: String new.
	result
		nextPutAll: 'Digest username="';
		nextPutAll: self username;
		nextPutAll: '", ';
		nextPutAll: 'nonce="';
		nextPutAll: self nonce;
		nextPutAll: '", ';
		nextPutAll: 'realm="';
		nextPutAll: self realm;
		nextPutAll: '", ';
		nextPutAll: 'uri="';
		nextPutAll: (self uriPathFrom: urlObject);
		nextPutAll: '", ';
		nextPutAll: 'response="';
		nextPutAll: (self responseForUrl: urlObject method: method);
		nextPutAll: '", '.
	self opaque
		ifNotNil: [:opaqueValue |
			result
				nextPutAll: 'opaque="';
				nextPutAll: opaqueValue;
				nextPutAll: '"'
			].
	^ result contents