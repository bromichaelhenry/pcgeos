
COMMENT @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	Copyright (c) Berkeley Softworks 1990 -- All Rights Reserved

PROJECT:	PC GEOS
MODULE:		quietjet print drivers
FILE:		cursorConvert192.asm

AUTHOR:		Dave Durran

ROUTINES:
	Name			Description
	----			-----------

	
REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	Dave	1/92		Initial revision from laserplsCursor.asm


DESCRIPTION:

	$Id: cursorConvert192.asm,v 1.1 97/04/18 11:49:48 newdeal Exp $

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@

COMMENT @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		PrConvertToDriverCoordinates
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

SYNOPSIS:	
	converts the value in 1/72s passed in ax to 1/192s

CALLED BY:
	PrintSwath

PASS:
	dx.ax	=	value to convert.

RETURN:
	dx	=	value converted.

DESTROYED:
	nothing

PSEUDO CODE/STRATEGY:

KNOWN BUGS/SIDE EFFECTS/IDEAS:
		none

REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	Dave	02/90		Initial version

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@

PrConvertToDriverCoordinates	proc	near
	uses	bx,cx
	.enter
	mov	cx,ax		;get in right reg for kernal.
	mov	bx,2		;x2.6667
	mov	ax,43691	;
	call	GrMulWWFixed
	.leave
	ret
PrConvertToDriverCoordinates	endp


COMMENT @%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
		PrConvertFromDriverCoordinates
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

SYNOPSIS:	
	converts the value in 1/192s passed in ax to 1/72s

CALLED BY:
	PrintSwath

PASS:
	dx	=	value to convert.

RETURN:
	dx.ax	=	value converted.

DESTROYED:
	nothing

PSEUDO CODE/STRATEGY:

KNOWN BUGS/SIDE EFFECTS/IDEAS:
		none

REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	Dave	02/90		Initial version

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%@

PrConvertFromDriverCoordinates	proc	near
	uses	bx,cx
	.enter
	clr	cx		;zero the fraction.
	mov	bx,2		;x2.6667
	mov	ax,43691
	call	GrUDivWWFixed
	mov	ax,cx		;dx.ax now is the result.
	.leave
	ret
PrConvertFromDriverCoordinates	endp

