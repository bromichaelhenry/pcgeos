
COMMENT @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	Copyright (c) Berkeley Softworks 1990 -- All Rights Reserved

PROJECT:	PC GEOS
MODULE:		Diconix 9-pin print drivers
FILE:		printcomDiconixCursor.asm

AUTHOR:		Dave Durran, 14 March 1990

ROUTINES:
	Name			Description
	----			-----------

	
REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	Dave	3/14/90		Initial revision
	Dave	3/92		moved from epson9 to printcom


DESCRIPTION:
	This file contains most of the code to implement the epson FX type
	print driver cursor movement support

	The cursor position is kept in 2 words: integer 288ths in Y and
	integer 72nds in X

	$Id: printcomDiconixCursor.asm,v 1.1 97/04/18 11:50:10 newdeal Exp $

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@

include	Cursor/cursorDotMatrixCommon.asm
include	Cursor/cursorSetCursorTab72.asm
include	Cursor/cursorPrLineFeedExe.asm
include	Cursor/cursorPrFormFeed72.asm
include	Cursor/cursorConvert288.asm
include	Cursor/cursor1ScanlineFeed.asm
