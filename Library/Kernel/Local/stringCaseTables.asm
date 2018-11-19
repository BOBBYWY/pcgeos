COMMENT @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	Copyright (c) GeoWorks 1990 -- All Rights Reserved

PROJECT:	PC GEOS
MODULE:		
FILE:		stringCase.def

AUTHOR:		Gene Anderson, Dec  6, 1990

TABLES:
	Name			Description
	----			-----------
	UpcaseTable		mapping to upper case table
	DowncaseTable		mapping to lower case table
	
REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	eca	12/ 6/90	Initial revision


DESCRIPTION:
	Tables & constants for dealing with up- and downcasing text
		
	$Id: stringCaseTables.asm,v 1.1 97/04/05 01:16:37 newdeal Exp $

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@

StringMod	segment	resource

MIN_UPCASE	= 'a'
MIN_DOWNCASE	= 'A'

UpcaseTable	label	byte
	db	'A'			;start at 'a'
	db	'B'			;0x62
	db	'C'			;0x63
	db	'D'			;0x64
	db	'E'			;0x65
	db	'F'			;0x66
	db	'G'			;0x67
	db	'H'			;0x68
	db	'I'			;0x69
	db	'J'			;0x6a
	db	'K'			;0x6b
	db	'L'			;0x6c
	db	'M'			;0x6d
	db	'N'			;0x6e
	db	'O'			;0x6f
	db	'P'			;0x70
	db	'Q'			;0x71
	db	'R'			;0x72
	db	'S'			;0x73
	db	'T'			;0x74
	db	'U'			;0x75
	db	'V'			;0x76
	db	'W'			;0x77
	db	'X'			;0x78
	db	'Y'			;0x79
	db	'Z'			;0x7a
	db	'{'			;0x7b
	db	'|'			;0x7c
	db	'}'			;0x7d
	db	'~'			;0x7e
	db	07fh			;0x7f
	db	C_UA_DIERESIS		;0x80
	db	C_UA_RING		;0x81
	db	C_UC_CEDILLA		;0x82
	db	C_UE_ACUTE		;0x83
	db	C_UN_TILDE		;0x84
	db	C_UO_DIERESIS		;0x85
	db	C_UU_DIERESIS		;0x86
	db	C_UA_ACUTE		;0x87
	db	C_UA_GRAVE		;0x88
	db	C_UA_CIRCUMFLEX		;0x89
	db	C_UA_DIERESIS		;0x8a
	db	C_UA_TILDE		;0x8b
	db	C_UA_RING		;0x8c
	db	C_UC_CEDILLA		;0x8d
	db	C_UE_ACUTE		;0x8e
	db	C_UE_GRAVE		;0x8f
	db	C_UE_CIRCUMFLEX		;0x90
	db	C_UE_DIERESIS		;0x91
	db	C_UI_ACUTE		;0x92
	db	C_UI_GRAVE		;0x93
	db	C_UI_CIRCUMFLEX		;0x94
	db	C_UI_DIERESIS		;0x95
	db	C_UN_TILDE		;0x96
	db	C_UO_ACUTE		;0x97
	db	C_UO_GRAVE		;0x98
	db	C_UO_CIRCUMFLEX		;0x99
	db	C_UO_DIERESIS		;0x9a
	db	C_UO_TILDE		;0x9b
	db	C_UU_ACUTE		;0x9c
	db	C_UU_GRAVE		;0x9d
	db	C_UU_CIRCUMFLEX		;0x9e
	db	C_UU_DIERESIS		;0x9f
	db	C_DAGGER		;0xa0
	db	C_RING			;0xa1
	db	C_CENT			;0xa2
	db	C_STERLING		;0xa3
	db	C_SECTION		;0xa4
	db	C_BULLET		;0xa5
	db	C_PARAGRAPH		;0xa6
	db	C_GERMANDBLS		;0xa7
	db	C_REGISTERED		;0xa8
	db	C_COPYRIGHT		;0xa9
	db	C_TRADEMARK		;0xaa
	db	C_ACUTE			;0xab
	db	C_DIERESIS		;0xac
	db	C_NOTEQUAL		;0xad
	db	C_U_AE			;0xae
	db	C_UO_SLASH		;0xaf
	db	C_INFINITY		;0xb0
	db	C_PLUSMINUS		;0xb1
	db	C_LESSEQUAL		;0xb2
	db	C_GREATEREQUAL		;0xb3
	db	C_YEN			;0xb4
	db	C_L_MU			;0xb5
	db	C_L_DELTA		;0xb6
	db	C_U_SIGMA		;0xb7
	db	C_U_PI			;0xb8
	db	C_L_PI			;0xb9
	db	C_INTEGRAL		;0xba
	db	C_ORDFEMININE		;0xbb
	db	C_ORDMASCULINE		;0xbc
	db	C_U_OMEGA		;0xbd
	db	C_U_AE			;0xbe
	db	C_UO_SLASH		;0xbf
	db	C_QUESTIONDOWN		;0xc0
	db	C_EXCLAMDOWN		;0xc1
	db	C_LOGICAL_NOT		;0xc2
	db	C_ROOT			;0xc3
	db	C_FLORIN		;0xc4
	db	C_APPROX_EQUAL		;0xc5
	db	C_U_DELTA		;0xc6
	db	C_GUILLEDBLLEFT		;0xc7
	db	C_GUILLEDBLRIGHT	;0xc8
	db	C_ELLIPSIS		;0xc9
	db	C_NONBRKSPACE		;0xca
	db	C_UA_GRAVE		;0xcb
	db	C_UA_TILDE		;0xcc
	db	C_UO_TILDE		;0xcd
	db	C_U_OE			;0xce
	db	C_U_OE			;0xcf
	db	C_HYPHEN		;0xd0
	db	C_EMDASH		;0xd1
	db	C_QUOTEDBLLEFT		;0xd2
	db	C_QUOTEDBLRIGHT		;0xd3
	db	C_QUOTESNGLEFT		;0xd4
	db	C_QUOTESNGRIGHT		;0xd5
	db	C_DIVISION		;0xd6
	db	C_DIAMONDBULLET		;0xd7
	db	C_UY_DIERESIS		;0xd8
	db	C_UY_DIERESIS		;0xd9
	db	C_FRACTION		;0xda
	db	C_CURRENCY		;0xdb
	db	C_GUILSNGLEFT		;0xdc
	db	C_GUILSNGRIGHT		;0xdd
	db	C_UY_ACUTE		;0xde
	db	C_UY_ACUTE		;0xdf
	db	C_DBLDAGGER		;0xe0
	db	C_CNTR_DOT		;0xe1
	db	C_SNGQUOTELOW		;0xe2
	db	C_DBLQUOTELOW		;0xe3
	db	C_PERTHOUSAND		;0xe4
	db	C_UA_CIRCUMFLEX		;0xe5
	db	C_UE_CIRCUMFLEX		;0xe6
	db	C_UA_ACUTE		;0xe7
	db	C_UE_DIERESIS		;0xe8
	db	C_UE_GRAVE		;0xe9
	db	C_UI_ACUTE		;0xea
	db	C_UI_CIRCUMFLEX		;0xeb
	db	C_UI_DIERESIS		;0xec
	db	C_UI_GRAVE		;0xed
	db	C_UO_ACUTE		;0xee
	db	C_UO_CIRCUMFLEX		;0xef
	db	C_LOGO			;0xf0
	db	C_UO_GRAVE		;0xf1
	db	C_UU_ACUTE		;0xf2
	db	C_UU_CIRCUMFLEX		;0xf3
	db	C_UU_GRAVE		;0xf4
	db	'I'			;0xf5
	db	C_CIRCUMFLEX		;0xf6
	db	C_TILDE			;0xf7
	db	C_MACRON		;0xf8
	db	C_BREVE			;0xf9
	db	C_DOTACCENT		;0xfa
	db	C_RING			;0xfb
	db	C_CEDILLA		;0xfc
	db	C_HUNGARUMLAT		;0xfd
	db	C_OGONEK		;0xfe
	db	C_CARON			;0xff

DowncaseTable	label	byte
	db	'a'			;start a 'A'
	db	'b'			;0x42
	db	'c'			;0x43
	db	'd'			;0x44
	db	'e'			;0x45
	db	'f'			;0x46
	db	'g'			;0x47
	db	'h'			;0x48
	db	'i'			;0x49
	db	'j'			;0x4a
	db	'k'			;0x4b
	db	'l'			;0x4c
	db	'm'			;0x4d
	db	'n'			;0x4e
	db	'o'			;0x4f
	db	'p'			;0x50
	db	'q'			;0x51
	db	'r'			;0x52
	db	's'			;0x53
	db	't'			;0x54
	db	'u'			;0x55
	db	'v'			;0x56
	db	'w'			;0x57
	db	'x'			;0x58
	db	'y'			;0x59
	db	'z'			;0x5a
	db	'['			;0x5b
	db	'\\'			;0x5c
	db	']'			;0x5d
	db	'^'			;0x5e
	db	'_'			;0x5f
	db	'`'			;0x60
	db	'a'			;0x61	'a' -> 'a'
	db	'b'			;0x62
	db	'c'			;0x63
	db	'd'			;0x64
	db	'e'			;0x65
	db	'f'			;0x66
	db	'g'			;0x67
	db	'h'			;0x68
	db	'i'			;0x69
	db	'j'			;0x6a
	db	'k'			;0x6b
	db	'l'			;0x6c
	db	'm'			;0x6d
	db	'n'			;0x6e
	db	'o'			;0x6f
	db	'p'			;0x70
	db	'q'			;0x71
	db	'r'			;0x72
	db	's'			;0x73
	db	't'			;0x74
	db	'u'			;0x75
	db	'v'			;0x76
	db	'w'			;0x77
	db	'x'			;0x78
	db	'y'			;0x79
	db	'z'			;0x7a
	db	'{'			;0x7b
	db	'|'			;0x7c
	db	'}'			;0x7d
	db	'~'			;0x7e
	db	07fh			;0x7f
	db	C_LA_DIERESIS		;0x80
	db	C_LA_RING		;0x81
	db	C_LC_CEDILLA		;0x82
	db	C_LE_ACUTE		;0x83
	db	C_LN_TILDE		;0x84
	db	C_LO_DIERESIS		;0x85
	db	C_LU_DIERESIS		;0x86
	db	C_LA_ACUTE		;0x87
	db	C_LA_GRAVE		;0x88
	db	C_LA_CIRCUMFLEX		;0x89
	db	C_LA_DIERESIS		;0x8a
	db	C_LA_TILDE		;0x8b
	db	C_LA_RING		;0x8c
	db	C_LC_CEDILLA		;0x8d
	db	C_LE_ACUTE		;0x8e
	db	C_LE_GRAVE		;0x8f
	db	C_LE_CIRCUMFLEX		;0x90
	db	C_LE_DIERESIS		;0x91
	db	C_LI_ACUTE		;0x92
	db	C_LI_GRAVE		;0x93
	db	C_LI_CIRCUMFLEX		;0x94
	db	C_LI_DIERESIS		;0x95
	db	C_LN_TILDE		;0x96
	db	C_LO_ACUTE		;0x97
	db	C_LO_GRAVE		;0x98
	db	C_LO_CIRCUMFLEX		;0x99
	db	C_LO_DIERESIS		;0x9a
	db	C_LO_TILDE		;0x9b
	db	C_LU_ACUTE		;0x9c
	db	C_LU_GRAVE		;0x9d
	db	C_LU_CIRCUMFLEX		;0x9e
	db	C_LU_DIERESIS		;0x9f
	db	C_DAGGER		;0xa0
	db	C_RING			;0xa1
	db	C_CENT			;0xa2
	db	C_STERLING		;0xa3
	db	C_SECTION		;0xa4
	db	C_BULLET		;0xa5
	db	C_PARAGRAPH		;0xa6
	db	C_GERMANDBLS		;0xa7
	db	C_REGISTERED		;0xa8
	db	C_COPYRIGHT		;0xa9
	db	C_TRADEMARK		;0xaa
	db	C_ACUTE			;0xab
	db	C_DIERESIS		;0xac
	db	C_NOTEQUAL		;0xad
	db	C_L_AE			;0xae
	db	C_LO_SLASH		;0xaf
	db	C_INFINITY		;0xb0
	db	C_PLUSMINUS		;0xb1
	db	C_LESSEQUAL		;0xb2
	db	C_GREATEREQUAL		;0xb3
	db	C_YEN			;0xb4
	db	C_L_MU			;0xb5
	db	C_L_DELTA		;0xb6
	db	C_U_SIGMA		;0xb7
	db	C_U_PI			;0xb8
	db	C_L_PI			;0xb9
	db	C_INTEGRAL		;0xba
	db	C_ORDFEMININE		;0xbb
	db	C_ORDMASCULINE		;0xbc
	db	C_U_OMEGA		;0xbd
	db	C_L_AE			;0xbe
	db	C_LO_SLASH		;0xbf
	db	C_QUESTIONDOWN		;0xc0
	db	C_EXCLAMDOWN		;0xc1
	db	C_LOGICAL_NOT		;0xc2
	db	C_ROOT			;0xc3
	db	C_FLORIN		;0xc4
	db	C_APPROX_EQUAL		;0xc5
	db	C_U_DELTA		;0xc6
	db	C_GUILLEDBLLEFT		;0xc7
	db	C_GUILLEDBLRIGHT	;0xc8
	db	C_ELLIPSIS		;0xc9
	db	C_NONBRKSPACE		;0xca
	db	C_LA_GRAVE		;0xcb
	db	C_LA_TILDE		;0xcc
	db	C_LO_TILDE		;0xcd
	db	C_L_OE			;0xce
	db	C_L_OE			;0xcf
	db	C_HYPHEN		;0xd0
	db	C_EMDASH		;0xd1
	db	C_QUOTEDBLLEFT		;0xd2
	db	C_QUOTEDBLRIGHT		;0xd3
	db	C_QUOTESNGLEFT		;0xd4
	db	C_QUOTESNGRIGHT		;0xd5
	db	C_DIVISION		;0xd6
	db	C_DIAMONDBULLET		;0xd7
	db	C_LY_DIERESIS		;0xd8
	db	C_LY_DIERESIS		;0xd9
	db	C_FRACTION		;0xda
	db	C_CURRENCY		;0xdb
	db	C_GUILSNGLEFT		;0xdc
	db	C_GUILSNGRIGHT		;0xdd
	db	C_LY_ACUTE		;0xde
	db	C_LY_ACUTE		;0xdf
	db	C_DBLDAGGER		;0xe0
	db	C_CNTR_DOT		;0xe1
	db	C_SNGQUOTELOW		;0xe2
	db	C_DBLQUOTELOW		;0xe3
	db	C_PERTHOUSAND		;0xe4
	db	C_LA_CIRCUMFLEX		;0xe5
	db	C_LE_CIRCUMFLEX		;0xe6
	db	C_LA_ACUTE		;0xe7
	db	C_LE_DIERESIS		;0xe8
	db	C_LE_GRAVE		;0xe9
	db	C_LI_ACUTE		;0xea
	db	C_LI_CIRCUMFLEX		;0xeb
	db	C_LI_DIERESIS		;0xec
	db	C_LI_GRAVE		;0xed
	db	C_LO_ACUTE		;0xee
	db	C_LO_CIRCUMFLEX		;0xef
	db	C_LOGO			;0xf0
	db	C_LO_GRAVE		;0xf1
	db	C_LU_ACUTE		;0xf2
	db	C_LU_CIRCUMFLEX		;0xf3
	db	C_LU_GRAVE		;0xf4
	db	C_LI_DOTLESS		;0xf5
	db	C_CIRCUMFLEX		;0xf6
	db	C_TILDE			;0xf7
	db	C_MACRON		;0xf8
	db	C_BREVE			;0xf9
	db	C_DOTACCENT		;0xfa
	db	C_RING			;0xfb
	db	C_CEDILLA		;0xfc
	db	C_HUNGARUMLAT		;0xfd
	db	C_OGONEK		;0xfe
	db	C_CARON			;0xff

StringMod	ends