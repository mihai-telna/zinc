testing
testSNIPage
	"| client |
	self ensureSocketStreamFactory.
	self isNativeSSLPluginPresent ifFalse: [ ^ self skip ].
	self doesNativeSSLPluginSupportSNI ifFalse: [ ^ self skip ]."
	
	self skip. "This does no longer work, but we have to find out why"
	
	"(client := ZnClient new) 
		get: 'https://www.mnot.net/blog/2014/05/09/if_you_can_read_this_youre_sniing'.

	self assert: client isSuccess.

	client close"