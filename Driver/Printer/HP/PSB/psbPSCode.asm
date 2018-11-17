
COMMENT @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	Copyright (c) Berkeley Softworks 1991 -- All Rights Reserved

PROJECT:	PC GEOS
MODULE:		PostScript (btimap) printer driver
FILE:		psbPSCode.asm

AUTHOR:		Jim DeFrisco

REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	Jim	6/91		Initial revision


DESCRIPTION:
	This file contains the contents of the PostScript code snippets that 
	will be emitted by this library
		

	$Id: psbPSCode.asm,v 1.1 97/04/18 11:52:02 newdeal Exp $

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@


PSCode	segment	resource

;------------------------------------------------------------------------
;	A note about coding conventions:
;	For the PostScript code generated by this library, I have used a 
;	few conventions.  First, all variables are entirely in lower case
;	leters.  All procedures are entirely in upper case letters.  Both
;	are limited to three letters maximum.
;
;	I'm also using an abbreviated header for each PS code snippet.  They
;	are so small that the full procedure header seemed overkill...
;------------------------------------------------------------------------

;startScriptCode	label	char

	; misc stuff
emitCRLF	char	NL

	; page/object stuff
emitSO		char	"SO", NL		; - StartObject
emitEO		char	"EO", NL		; - EndObject
emitSave	char	"/pso save def", NL	; - add page level save object
emitRestore	char	"pso restore showpage", NL ; - restore from plso
emitBP		char	"BP", NL 		; - Begin Page
emitEP		char	"EP", NL 		; - EndPage
emitStartDict	char	"GWDict begin", NL 	; - Begin geoworks dict
emitEndDict	char	"end", NL 		; - end geoworks dict
emitNC		char	"/#copies "		; /#copies <numcopies> def
emitDef		char	" def", NL		; for variable definition
emitPageMatrix char	"[1 0 0 1 18 18] SPT", NL ; set page transform
emitObjMatrix char	"[1 0 0 1 0 0] SOT", NL ; set obj transform

	; transformation matrix stuff
emitSDT		char	"SDT", NL		; SetDefaultTransform
emitSOT		char	" SOT", NL		; <matrix> SetObjectTransform
emitSM		char	"SM "			; SaveMatrix

	; drawing stuff
emitOpenBracket	char	"[ "			; open array bracket
emitCloseBracket char	"] "			; close array bracket
emitCloseBrackets char	"] ] "			; close array bracket
emitDMB		char	" DMB", NL		; DrawMonoBitmap

;endScriptCode	label	char

PSCode	ends
