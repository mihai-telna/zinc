public
handleAuthenticationCallback: aParameterDictionary 
	"Handle an Authorization Response code by issuing an Access Token Request.
	
	See for details: https://tools.ietf.org/html/rfc6749#section-4.1.3"
	| code tokenRequest client tokenResponse |
	
	code := aParameterDictionary at: 'code' ifAbsent: [ ^ nil ].

	tokenRequest  := (ZnRequest post: (ZnUrl fromString: self tokenEndpoint))
		entity: (ZnApplicationFormUrlEncodedEntity new
			at: 'grant_type' put: 'authorization_code';
			at: 'code' put: code;
			at: 'redirect_uri' put: self redirectUrl;
			at: 'client_id' put: self consumerData key;
			at: 'client_secret' put: self consumerData secret;
			yourself);
		yourself.

	client := ZnClient new.
	tokenResponse := [ 
		client request: tokenRequest;
			post ] ensure: [ client close ].

	self updateTokens: (ZnUtils defaultJSONReader fromString: tokenResponse).
