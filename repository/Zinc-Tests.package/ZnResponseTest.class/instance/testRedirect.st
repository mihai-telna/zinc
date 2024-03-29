testing
testRedirect
	| response uri |
	uri := '/something/else/foo.txt'.
	response := ZnResponse redirect: uri.
	self assert: response code equals: 302.
	self assert: response code equals: 302.
	self assert: response hasHeaders.
	self assert: (response headers at: 'Location') equals: uri.
	self assert: response hasEntity.
	self assert: (response entity contents includesSubstring: uri).
	response := ZnResponse redirect: uri asZnUrl.
	self assert: response code equals: 302.
	self assert: response code equals: 302.
	self assert: response hasHeaders.
	self assert: (response headers at: 'Location') equals: uri.
	self assert: response hasEntity.
	self assert: (response entity contents includesSubstring: uri)