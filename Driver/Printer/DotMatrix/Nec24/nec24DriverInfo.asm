COMMENT @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	Copyright (c) Berkeley Softworks 1990 -- All Rights Reserved

PROJECT:	PC GEOS
MODULE:		NEC 24-pin printer driver
FILE:		nec24DriverInfo.asm

AUTHOR:		Dave Durran, 26 Mar 1990

	
REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	Dave	3/27/90		Initial revision
	Dave	5/92		Initial 2.0 version

DESCRIPTION:
	Driver info for the nec 24-pin printer driver

	The file "printerDriver.def" should be included before this one
		

	$Id: nec24DriverInfo.asm,v 1.1 97/04/18 11:54:18 newdeal Exp $

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@


COMMENT @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		Driver Info Resource

	This part of the file contains the information that pertains to
	all device supported by the driver.  It includes device names and
	a table of the resource handles for the specific device info.  A
	pointer to this info is provided by the DriverInfo function.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@

DriverInfo	segment	lmem LMEM_TYPE_GENERAL

;----------------------------------------------------------------------------
;	Device Enumerations
;----------------------------------------------------------------------------

; This etype defined in printDriver.def
;  PrintDevice	etype	word, 0, 2

DefPrinter PD_NEC_P2200, "NEC P2200", p2200Info
DefPrinter PD_NEC_P2200XE, "NEC P2200XE", p2200Info
DefPrinter PD_NEC_P3200, "NEC P3200", p2200Info
DefPrinter PD_NEC_P3300, "NEC P3300", p3300Info
DefPrinter PD_NEC_P5200_MONO, "NEC P5200 (B/W)", p6monoInfo
DefPrinter PD_NEC_P5200, "NEC P5200 (Color)", p6Info
DefPrinter PD_NEC_P5300_MONO, "NEC P5300 (B/W)", p7monoInfo
DefPrinter PD_NEC_P5300, "NEC P5300 (Color)", p7Info
DefPrinter PD_NEC_P6_MONO, "NEC P6 (B/W)", p6monoInfo
DefPrinter PD_NEC_P6, "NEC P6 (Color)", p6Info
DefPrinter PD_NEC_P6200_MONO, "NEC P6200 (B/W)", p6monoInfo
DefPrinter PD_NEC_P6200, "NEC P6200 (Color)", p6Info
DefPrinter PD_NEC_P6300_MONO, "NEC P6300 (B/W)", p7monoInfo
DefPrinter PD_NEC_P6300, "NEC P6300 (Color)", p7Info
DefPrinter PD_NEC_P7_MONO, "NEC P7 (B/W)", p7monoInfo
DefPrinter PD_NEC_P7, "NEC P7 (Color)", p7Info
DefPrinter PD_NEC_P9300_MONO, "NEC P9300 (B/W)", p7monoInfo
DefPrinter PD_NEC_P9300, "NEC P9300 (Color)", p7Info
DefPrinter PD_NEC_P9XL_MONO, "NEC P9XL (B/W)", p6monoInfo
DefPrinter PD_NEC_P9XL, "NEC P9XL (Color)", p6Info
DefPrinter PD_PHILIPS_NMS1461_N, "Philips NMS 1461 (NEC Mode)", p2200Info
DefPrinter PD_PHILIPS_NMS1467_N, "Philips NMS 1467 (NEC Mode)", p3300Info


;----------------------------------------------------------------------------
;	Driver Info Header
;----------------------------------------------------------------------------

DriverExtendedInfoTable			 < 
					    {},			  ; lmem hdr
					    PrintDevice/2, ; # devices
					    offset deviceStrings, ; names
					    offset deviceInfoTab  ; info blocks
					    >

PrintDriverInfo				 <  10,			; timeout (sec)
					   PR_DONT_RESEND,	;
                                           isoSubstitutions,    ;ISO sub tab.
                                           asciiTransTable,
                                           PDT_PRINTER,
                                           TRUE
					 >

;----------------------------------------------------------------------------
;	Device String Table and Strings
;----------------------------------------------------------------------------

        ;ISO Substitutions for this printer.
        ;France,Germany,UK,Denmark1,Sweden,Italy,Spain1,Japan,Norway,Denmark2.

isoSubstitutions        chunk.word \
                2323h,2424h,4088h,5ba1h,5c8dh,5da4h,5e5eh,6060h,\
                7b8eh,7c9dh,7d8fh,7each,0000h,0000h,0000h,0000h,\
                2323h,2424h,40a4h,5b80h,5c85h,5d86h,5e5eh,6060h,\
                7b8ah,7c9ah,7d9fh,7ea7h,0000h,0000h,0000h,0000h,\
                23a3h,0000h,0000h,0000h,0000h,0000h,0000h,0000h,\
                0000h,0000h,0000h,0000h,0000h,0000h,0000h,0000h,\
                2323h,2424h,4040h,5baeh,5cafh,5d81h,5e5eh,6060h,\
                7bbeh,7cbfh,7d8ch,0000h,0000h,0000h,0000h,0000h,\
                2323h,24dbh,4083h,5b80h,5c85h,5d81h,5e86h,608eh,\
                7b8ah,7c9ah,7d8ch,7e9fh,0000h,0000h,0000h,0000h,\
                2323h,2424h,4040h,5ba1h,5c5ch,5d8eh,5e5eh,609dh,\
                7b88h,7c98h,7d8fh,7e93h,0000h,0000h,0000h,0000h,\
                2320h,2424h,4040h,5bc1h,5c84h,5dc2h,5e5eh,6060h,\
                7bach,7c96h,0000h,0000h,0000h,0000h,0000h,0000h,\
                2323h,2424h,4040h,5b5bh,5cb4h,0000h,0000h,0000h,\
                0000h,0000h,0000h,0000h,0000h,0000h,0000h,0000h,\
                2323h,24dbh,4083h,5baeh,5cafh,5d81h,5e86h,608eh,\
                7bbeh,7cbfh,7d8ch,7e9fh,0000h,0000h,0000h,0000h,\
                2323h,2424h,4083h,5baeh,5cafh,5d81h,5e86h,608eh,\
                7bbeh,7cbfh,7d8ch,7e9fh,0000h,0000h,0000h,0000h

	; ASCII Translation List for Foreign Language Versions
asciiTransTable		chunk.char ";;",0


;Create the actual tables now....
PrinterTables


DriverInfo	ends
