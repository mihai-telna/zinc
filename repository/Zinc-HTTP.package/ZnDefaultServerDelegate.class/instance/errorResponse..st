responses
errorResponse: request
	"Here we artificially signal an Error at the Smalltalk level,
	optionally with a user defined message."

	| message |
	message := request uri queryAt: 'message' ifAbsent: [ 'An artificial error' ].
	Error signal: message