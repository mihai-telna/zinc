encoding - decoding
ensureAtBeginOfCodePointOnStream: stream
	"Ensure that the current position of stream is a the beginning of an encoded code point,
	if not move further backwards. This is necessary when a position in the binary stream is set,
	not knowing if that position is on a proper encoded character boundary."

	"Nothing to be done, I am a byte encoding: each code point is encoded in a single byte"