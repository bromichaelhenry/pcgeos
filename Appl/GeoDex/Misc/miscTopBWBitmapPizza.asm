COMMENT @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	Copyright (c) Geoworks 1994 -- All Rights Reserved

PROJECT:	GeoDex
MODULE:		Misc
FILE:		miscTopBWBitmapPizza.asm

AUTHOR:		Greg Grisco, Jun 20, 1994

REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	grisco	6/20/94   	Initial revision

DESCRIPTION:
	Contains Pizza-specific B&W version of rolodex letter tabs 

	$Id: miscTopBWBitmapPizza.asm,v 1.1 97/04/04 15:50:18 newdeal Exp $

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@
BWLettersResource segment resource
		StartstarbwIcon label byte
		Bitmap <277,31, BMC_PACKBITS ,BMF_MONO>
	db	0x07, 0x00, 0x3f, 0xff, 0xfe, 0x3f, 0xff, 0xff, 
		0x8f, 0xe8, 0xff, 0x01, 0xfc, 0x00
	db	0x07, 0x00, 0x40, 0x00, 0x01, 0x40, 0x00, 0x00, 
		0x50, 0xe8, 0x00, 0x01, 0x12, 0x00
	db	0x07, 0x00, 0x80, 0x00, 0x00, 0x80, 0x00, 0x00, 
		0x20, 0xe8, 0x00, 0x01, 0x09, 0x00
	db	0x00, 0x01, 0xfe, 0x00, 0x03, 0x40, 0x00, 0x00, 
		0x10, 0xe8, 0x00, 0x01, 0x04, 0x80
	db	0x00, 0x02, 0xfe, 0x00, 0x03, 0x20, 0x00, 0x00, 
		0x08, 0xe8, 0x00, 0x01, 0x02, 0x40
	db	0x00, 0x02, 0xfe, 0x00, 0x03, 0x20, 0x00, 0x00, 
		0x08, 0xe8, 0x00, 0x01, 0x02, 0x20
	db	0x00, 0x02, 0xfe, 0x00, 0x03, 0x20, 0x00, 0x00, 
		0x08, 0xe8, 0x00, 0x01, 0x02, 0x20
	db	0x00, 0x02, 0xfe, 0x00, 0x03, 0x20, 0x00, 0x00, 
		0x08, 0xe8, 0x00, 0x01, 0x02, 0x20
	db	0x00, 0x02, 0xfe, 0x00, 0x03, 0x20, 0x00, 0x00, 
		0x08, 0xe8, 0x00, 0x01, 0x02, 0x20
	db	0x00, 0x02, 0xfe, 0x00, 0x03, 0x20, 0x00, 0x00, 
		0x08, 0xe8, 0x00, 0x01, 0x02, 0x20
	db	0x00, 0x02, 0xfe, 0x00, 0x03, 0x20, 0x00, 0x00, 
		0x08, 0xe8, 0x00, 0x01, 0x02, 0x20
	db	0x00, 0x02, 0xfe, 0x00, 0x03, 0x20, 0x00, 0x00, 
		0x08, 0xe8, 0x00, 0x01, 0x02, 0x20
	db	0x00, 0x02, 0xfe, 0x00, 0x03, 0x20, 0x00, 0x00, 
		0x08, 0xe8, 0x00, 0x01, 0x02, 0x20
	db	0x00, 0x02, 0xfe, 0x00, 0x03, 0x20, 0x00, 0x00, 
		0x08, 0xe8, 0x00, 0x01, 0x02, 0x20
	db	0x00, 0x02, 0xfe, 0x00, 0x03, 0x20, 0x00, 0x00, 
		0x08, 0xe8, 0x00, 0x01, 0x02, 0x20
	db	0x22, 0x07, 0xff, 0xff, 0xc7, 0xff, 0xff, 0xf1, 
		0xff, 0xff, 0xfc, 0x7f, 0xff, 0xff, 0x1f, 0xff, 
		0xff, 0xc7, 0xff, 0xff, 0xf1, 0xff, 0xff, 0xfc, 
		0x7f, 0xff, 0xff, 0x1f, 0xff, 0xff, 0xe3, 0xff, 
		0xff, 0xf8, 0x02, 0x20
	db	0x22, 0x08, 0x00, 0x00, 0x28, 0x00, 0x00, 0x0a, 
		0x00, 0x00, 0x02, 0x80, 0x00, 0x00, 0xa0, 0x00, 
		0x00, 0x28, 0x00, 0x00, 0x0a, 0x00, 0x00, 0x02, 
		0x80, 0x00, 0x00, 0xa0, 0x00, 0x00, 0x14, 0x00, 
		0x00, 0x04, 0x02, 0x20
	db	0x09, 0x10, 0x00, 0x00, 0x10, 0x00, 0x00, 0x04, 
		0x00, 0x00, 0x01, 0xfe, 0x00, 0x09, 0x40, 0x00, 
		0x00, 0x10, 0x00, 0x00, 0x04, 0x00, 0x00, 0x01, 
		0xfe, 0x00, 0x08, 0x40, 0x00, 0x00, 0x08, 0x00, 
		0x00, 0x02, 0x02, 0x20
	db	0x06, 0x20, 0x00, 0x00, 0x08, 0x00, 0x00, 0x02, 
		0xfe, 0x00, 0x09, 0x80, 0x00, 0x00, 0x20, 0x00, 
		0x00, 0x08, 0x00, 0x00, 0x02, 0xfe, 0x00, 0x0b, 
		0x80, 0x00, 0x00, 0x20, 0x00, 0x00, 0x04, 0x00, 
		0x00, 0x01, 0x02, 0x20
	db	0x06, 0x40, 0x00, 0x00, 0x04, 0x00, 0x00, 0x01, 
		0xfe, 0x00, 0x09, 0x40, 0x00, 0x00, 0x10, 0x00, 
		0x00, 0x04, 0x00, 0x00, 0x01, 0xfe, 0x00, 0x06, 
		0x40, 0x00, 0x00, 0x10, 0x00, 0x00, 0x02, 0xfe, 
		0x00, 0x01, 0x82, 0x20
	db	0x06, 0x40, 0x00, 0x00, 0x04, 0x00, 0x00, 0x01, 
		0xfe, 0x00, 0x09, 0x40, 0x00, 0x00, 0x10, 0x00, 
		0x00, 0x04, 0x00, 0x00, 0x01, 0xfe, 0x00, 0x06, 
		0x40, 0x00, 0x00, 0x10, 0x00, 0x00, 0x02, 0xfe, 
		0x00, 0x01, 0x82, 0x20
	db	0x06, 0x40, 0x00, 0x00, 0x04, 0x00, 0x00, 0x01, 
		0xfe, 0x00, 0x09, 0x40, 0x00, 0x00, 0x10, 0x00, 
		0x00, 0x04, 0x00, 0x00, 0x01, 0xfe, 0x00, 0x06, 
		0x40, 0x00, 0x00, 0x10, 0x00, 0x00, 0x02, 0xfe, 
		0x00, 0x01, 0x82, 0x20
	db	0x06, 0x40, 0x00, 0x00, 0x04, 0x00, 0x00, 0x01, 
		0xfe, 0x00, 0x09, 0x40, 0x00, 0x00, 0x10, 0x00, 
		0x00, 0x04, 0x00, 0x00, 0x01, 0xfe, 0x00, 0x06, 
		0x40, 0x00, 0x00, 0x10, 0x00, 0x00, 0x02, 0xfe, 
		0x00, 0x01, 0x82, 0x20
	db	0x06, 0x40, 0x00, 0x00, 0x04, 0x00, 0x00, 0x01, 
		0xfe, 0x00, 0x09, 0x40, 0x00, 0x00, 0x10, 0x00, 
		0x00, 0x04, 0x00, 0x00, 0x01, 0xfe, 0x00, 0x06, 
		0x40, 0x00, 0x00, 0x10, 0x00, 0x00, 0x02, 0xfe, 
		0x00, 0x01, 0x82, 0x20
	db	0x06, 0x40, 0x00, 0x00, 0x04, 0x00, 0x00, 0x01, 
		0xfe, 0x00, 0x09, 0x40, 0x00, 0x00, 0x10, 0x00, 
		0x00, 0x04, 0x00, 0x00, 0x01, 0xfe, 0x00, 0x06, 
		0x40, 0x00, 0x00, 0x10, 0x00, 0x00, 0x02, 0xfe, 
		0x00, 0x01, 0x82, 0x20
	db	0x06, 0x40, 0x00, 0x00, 0x04, 0x00, 0x00, 0x01, 
		0xfe, 0x00, 0x09, 0x40, 0x00, 0x00, 0x10, 0x00, 
		0x00, 0x04, 0x00, 0x00, 0x01, 0xfe, 0x00, 0x06, 
		0x40, 0x00, 0x00, 0x10, 0x00, 0x00, 0x02, 0xfe, 
		0x00, 0x01, 0x82, 0x20
	db	0x06, 0x40, 0x00, 0x00, 0x04, 0x00, 0x00, 0x01, 
		0xfe, 0x00, 0x09, 0x40, 0x00, 0x00, 0x10, 0x00, 
		0x00, 0x04, 0x00, 0x00, 0x01, 0xfe, 0x00, 0x06, 
		0x40, 0x00, 0x00, 0x10, 0x00, 0x00, 0x02, 0xfe, 
		0x00, 0x01, 0x82, 0x20
	db	0x06, 0x40, 0x00, 0x00, 0x04, 0x00, 0x00, 0x01, 
		0xfe, 0x00, 0x09, 0x40, 0x00, 0x00, 0x10, 0x00, 
		0x00, 0x04, 0x00, 0x00, 0x01, 0xfe, 0x00, 0x06, 
		0x40, 0x00, 0x00, 0x10, 0x00, 0x00, 0x02, 0xfe, 
		0x00, 0x01, 0x82, 0x20
	db	0x06, 0x40, 0x00, 0x00, 0x04, 0x00, 0x00, 0x01, 
		0xfe, 0x00, 0x09, 0x40, 0x00, 0x00, 0x10, 0x00, 
		0x00, 0x04, 0x00, 0x00, 0x01, 0xfe, 0x00, 0x06, 
		0x40, 0x00, 0x00, 0x10, 0x00, 0x00, 0x02, 0xfe, 
		0x00, 0x01, 0x82, 0x20
	db	0x06, 0x40, 0x00, 0x00, 0x04, 0x00, 0x00, 0x01, 
		0xfe, 0x00, 0x09, 0x40, 0x00, 0x00, 0x10, 0x00, 
		0x00, 0x04, 0x00, 0x00, 0x01, 0xfe, 0x00, 0x06, 
		0x40, 0x00, 0x00, 0x10, 0x00, 0x00, 0x02, 0xfe, 
		0x00, 0x01, 0x82, 0x20
	db	0x00, 0x7f, 0xe1, 0xff, 0x01, 0xe2, 0x20

		StartBWArrow label byte
                Bitmap <10,10,BMC_PACKBITS, BMF_MONO>
		db	001h, 00ch, 000h
		db	001h, 01eh, 000h
		db	001h, 03fh, 000h
		db	001h, 07fh, 080h
		db	001h, 0ffh, 0c0h
		db	001h, 01eh, 000h
		db	001h, 01eh, 000h
		db	001h, 01eh, 000h
		db	001h, 01eh, 000h
		db	001h, 01eh, 000h

BWLettersResource ends
