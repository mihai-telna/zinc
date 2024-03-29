mappings
cp850Mapping
	"This is not included in the MS mappings on the Unicode site,
	but still in modern use as the default codepage in
	the Windows Command Shell for multilingual locales"
	"Technically, due to structure of ByteEncoder, it is incomplete,
	as the lower range corresponds not to ASCII, but to cp437,
	where character 0 - 31 and 127 have different meanings."
	"See also http://en.wikipedia.org/wiki/Code_page_850"

	^ #(
	16r00C7 16r00FC 16r00E9 16r00E2 16r00E4 16r00E0 16r00E5 16r00E7
	16r00EA 16r00EB 16r00E8 16r00EF 16r00EE 16r00EC 16r00C4 16r00C5
	16r00C9 16r00E6 16r00C6 16r00F4 16r00F6 16r00F2 16r00FB 16r00F9
	16r00FF 16r00D6 16r00DC 16r00F8 16r00A3 16r00D8 16r00D7 16r0192
	16r00E1 16r00ED 16r00F3 16r00FA 16r00F1 16r00D1 16r00AA 16r00BA
	16r00BF 16r00AE 16r00AC 16r00BD 16r00BC 16r00A1 16r00AB 16r00BB
	16r2591 16r2592 16r2593 16r2502 16r2524 16r00C1 16r00C2 16r00C0
	16r00A9 16r2563 16r2551 16r2557 16r255D 16r00A2 16r00A5 16r2510
	16r2514 16r2534 16r252C 16r251C 16r2500 16r253C 16r00E3 16r00C3
	16r255A 16r2554 16r2569 16r2566 16r2560 16r2550 16r256C 16r00A4
	16r00F0 16r00D0 16r00CA 16r00CB 16r00C8 16r0131 16r00CD 16r00CE
	16r00CF 16r2518 16r250C 16r2588 16r2584 16r00A6 16r00CC 16r2580
	16r00D3 16r00DF 16r00D4 16r00D2 16r00F5 16r00D5 16r00B5 16r00FE
	16r00DE 16r00DA 16r00DB 16r00D9 16r00FD 16r00DD 16r00AF 16r00B4
	16r00AD 16r00B1 16r2017 16r00BE 16r00B6 16r00A7 16r00F7 16r00B8
	16r00B0 16r00A8 16r00B7 16r00B9 16r00B3 16r00B2 16r25A0 16r00A0 )