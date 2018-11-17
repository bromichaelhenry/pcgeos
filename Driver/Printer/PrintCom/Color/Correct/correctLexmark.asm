COMMENT @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	Copyright (c) GeoWorks 1995 -- All Rights Reserved

PROJECT:	PC GEOS
MODULE:		Printer Drivers
FILE:		correctLexmark.asm

AUTHOR:		Dave Durran

REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	Dave	5/10/95		Initial revision


DESCRIPTION:
	Color correction table generated for Lexmark CMY Color.
	On plain copier paper


	$Id: correctLexmark.asm,v 1.1 97/04/18 11:51:38 newdeal Exp $

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@

CorrectLexmark	segment	resource

lexmarkInkCorrection	label	ColorTransfer
							;  R	   G	  B
;RED = 00
		byte	0x20, 0x60, 0x00		;  0x00    0x00   0x00
		byte	0x50, 0x00, 0x70		;  0x00    0x00   0x40
		byte	0x00, 0x60, 0x50		;  0x00    0x00   0x80
		byte	0x00, 0x70, 0x30		;  0x00    0x00   0xc0
		byte	0x00, 0x70, 0x00		;  0x00    0x00   0xff

		byte	0x00, 0x40, 0x00		;  0x00    0x40   0x00
		byte	0x00, 0x40, 0x40		;  0x00    0x40   0x40
		byte	0x30, 0x60, 0x50		;  0x00    0x40   0x80
		byte	0x30, 0x70, 0x30		;  0x00    0x40   0xc0
		byte	0x30, 0x70, 0x00		;  0x00    0x40   0xff

		byte	0x50, 0x50, 0x00		;  0x00    0x80   0x00
		byte	0x40, 0x50, 0x20		;  0x00    0x80   0x40
		byte	0x30, 0x50, 0x60		;  0x00    0x80   0x80
		byte	0x40, 0x50, 0x30		;  0x00    0x80   0xc0
		byte	0x50, 0x60, 0x00		;  0x00    0x80   0xff

		byte	0x80, 0x30, 0x20		;  0x00    0xc0   0x00
		byte	0x80, 0x30, 0x40		;  0x00    0xc0   0x40
		byte	0x70, 0x30, 0x50		;  0x00    0xc0   0x80
		byte	0x70, 0x30, 0x30		;  0x00    0xc0   0xc0
		byte	0x80, 0x30, 0x00		;  0x00    0xc0   0xff

		byte	0x90, 0x00, 0x30		;  0x00    0xff   0x00
		byte	0x90, 0x00, 0x50		;  0x00    0xff   0x40
		byte	0x90, 0x00, 0x40		;  0x00    0xff   0x80
		byte	0x90, 0x00, 0x20		;  0x00    0xff   0xc0
		byte	0x90, 0x00, 0x00		;  0x00    0xff   0xff

;RED = 40
		byte	0x70, 0x00, 0x00		;  0x40    0x00   0x00
		byte	0x60, 0x00, 0x80		;  0x40    0x00   0x40
		byte	0x60, 0x00, 0x70		;  0x40    0x00   0x80
		byte	0x50, 0x00, 0x3f		;  0x40    0x00   0xc0
		byte	0x30, 0x00, 0x00		;  0x40    0x00   0xff

		byte	0x70, 0x70, 0x00		;  0x40    0x40   0x00
		byte	0x60, 0x50, 0x50		;  0x40    0x40   0x40
		byte	0x60, 0x60, 0x50		;  0x40    0x40   0x80
		byte	0x60, 0x70, 0x30		;  0x40    0x40   0xc0
		byte	0x50, 0x80, 0x00		;  0x40    0x40   0xff

		byte	0x68, 0x60, 0x00		;  0x40    0x80   0x00
		byte	0x60, 0x50, 0x40		;  0x40    0x80   0x40
		byte	0x60, 0x50, 0x50		;  0x40    0x80   0x80
		byte	0x60, 0x60, 0x30		;  0x40    0x80   0xc0
		byte	0x60, 0x60, 0x00		;  0x40    0x80   0xff

		byte	0x64, 0x30, 0x00		;  0x40    0xc0   0x00
		byte	0x60, 0x30, 0x40		;  0x40    0xc0   0x40
		byte	0x60, 0x30, 0x50		;  0x40    0xc0   0x80
		byte	0x60, 0x30, 0x30		;  0x40    0xc0   0xc0
		byte	0x60, 0x30, 0x00		;  0x40    0xc0   0xff

		byte	0x60, 0x00, 0x00		;  0x40    0xff   0x00
		byte	0x60, 0x00, 0x40		;  0x40    0xff   0x40
		byte	0x60, 0x00, 0x50		;  0x40    0xff   0x80
		byte	0x60, 0x00, 0x30		;  0x40    0xff   0xc0
		byte	0x60, 0x00, 0x00		;  0x40    0xff   0xff

;RED = 80
		byte	0x68, 0x00, 0x00		;  0x80    0x00   0x00
		byte	0x50, 0x00, 0x80		;  0x80    0x00   0x40
		byte	0x40, 0x00, 0x70		;  0x80    0x00   0x80
		byte	0x30, 0x00, 0x3f		;  0x80    0x00   0xc0
		byte	0x28, 0x00, 0x00		;  0x80    0x00   0xff

		byte	0x50, 0x70, 0x00		;  0x80    0x40   0x00
		byte	0x40, 0x50, 0x50		;  0x80    0x40   0x40
		byte	0x40, 0x60, 0x50		;  0x80    0x40   0x80
		byte	0x40, 0x70, 0x30		;  0x80    0x40   0xc0
		byte	0x30, 0x80, 0x00		;  0x80    0x40   0xff

		byte	0x40, 0x60, 0x00		;  0x80    0x80   0x00
		byte	0x40, 0x50, 0x40		;  0x80    0x80   0x40
		byte	0x40, 0x40, 0x50		;  0x80    0x80   0x80
		byte	0x40, 0x60, 0x30		;  0x80    0x80   0xc0
		byte	0x40, 0x60, 0x00		;  0x80    0x80   0xff

		byte	0x40, 0x30, 0x00		;  0x80    0xc0   0x00
		byte	0x40, 0x30, 0x40		;  0x80    0xc0   0x40
		byte	0x40, 0x30, 0x50		;  0x80    0xc0   0x80
		byte	0x40, 0x30, 0x30		;  0x80    0xc0   0xc0
		byte	0x40, 0x30, 0x00		;  0x80    0xc0   0xff

		byte	0x40, 0x00, 0x00		;  0x80    0xff   0x00
		byte	0x40, 0x00, 0x40		;  0x80    0xff   0x40
		byte	0x40, 0x00, 0x50		;  0x80    0xff   0x80
		byte	0x40, 0x00, 0x30		;  0x80    0xff   0xc0
		byte	0x40, 0x00, 0x00		;  0x80    0xff   0xff

;RED = C0
		byte	0x38, 0x00, 0x00		;  0xc0    0x00   0x00
		byte	0x34, 0x00, 0x80		;  0xc0    0x00   0x40
		byte	0x30, 0x00, 0x70		;  0xc0    0x00   0x80
		byte	0x20, 0x00, 0x3f		;  0xc0    0x00   0xc0
		byte	0x10, 0x00, 0x00		;  0xc0    0x00   0xff

		byte	0x34, 0x70, 0x00		;  0xc0    0x40   0x00
		byte	0x30, 0x50, 0x50		;  0xc0    0x40   0x40
		byte	0x30, 0x60, 0x50		;  0xc0    0x40   0x80
		byte	0x28, 0x70, 0x30		;  0xc0    0x40   0xc0
		byte	0x18, 0x80, 0x00		;  0xc0    0x40   0xff

		byte	0x30, 0x60, 0x00		;  0xc0    0x80   0x00
		byte	0x30, 0x50, 0x40		;  0xc0    0x80   0x40
		byte	0x30, 0x40, 0x50		;  0xc0    0x80   0x80
		byte	0x2c, 0x60, 0x30		;  0xc0    0x80   0xc0
		byte	0x24, 0x60, 0x00		;  0xc0    0x80   0xff

		byte	0x30, 0x30, 0x00		;  0xc0    0xc0   0x00
		byte	0x30, 0x30, 0x40		;  0xc0    0xc0   0x40
		byte	0x30, 0x30, 0x50		;  0xc0    0xc0   0x80
		byte	0x30, 0x30, 0x30		;  0xc0    0xc0   0xc0
		byte	0x30, 0x30, 0x00		;  0xc0    0xc0   0xff

		byte	0x30, 0x00, 0x00		;  0xc0    0xff   0x00
		byte	0x30, 0x00, 0x40		;  0xc0    0xff   0x40
		byte	0x30, 0x00, 0x50		;  0xc0    0xff   0x80
		byte	0x30, 0x00, 0x30		;  0xc0    0xff   0xc0
		byte	0x30, 0x00, 0x00		;  0xc0    0xff   0xff

;RED = FF
		byte	0x00, 0x00, 0x00		;  0xff    0x00   0x00
		byte	0x00, 0x00, 0x80		;  0xff    0x00   0x40
		byte	0x00, 0x00, 0x70		;  0xff    0x00   0x80
		byte	0x08, 0x00, 0x3f		;  0xff    0x00   0xc0
		byte	0x10, 0x00, 0x00		;  0xff    0x00   0xff

		byte	0x00, 0x70, 0x00		;  0xff    0x40   0x00
		byte	0x00, 0x50, 0x50		;  0xff    0x40   0x40
		byte	0x00, 0x60, 0x50		;  0xff    0x40   0x80
		byte	0x00, 0x70, 0x30		;  0xff    0x40   0xc0
		byte	0x08, 0x80, 0x00		;  0xff    0x40   0xff

		byte	0x00, 0x60, 0x00		;  0xff    0x80   0x00
		byte	0x00, 0x50, 0x40		;  0xff    0x80   0x40
		byte	0x00, 0x40, 0x50		;  0xff    0x80   0x80
		byte	0x00, 0x60, 0x30		;  0xff    0x80   0xc0
		byte	0x00, 0x60, 0x00		;  0xff    0x80   0xff

		byte	0x00, 0x30, 0x00		;  0xff    0xc0   0x00
		byte	0x00, 0x30, 0x40		;  0xff    0xc0   0x40
		byte	0x00, 0x30, 0x50		;  0xff    0xc0   0x80
		byte	0x00, 0x30, 0x30		;  0xff    0xc0   0xc0
		byte	0x00, 0x30, 0x00		;  0xff    0xc0   0xff

		byte	0x00, 0x00, 0x00		;  0xff    0xff   0x00
		byte	0x00, 0x00, 0x40		;  0xff    0xff   0x40
		byte	0x00, 0x00, 0x50		;  0xff    0xff   0x80
		byte	0x00, 0x00, 0x30		;  0xff    0xff   0xc0
		byte	0x00, 0x00, 0x00		;  0xff    0xff   0xff

CorrectLexmark	ends
