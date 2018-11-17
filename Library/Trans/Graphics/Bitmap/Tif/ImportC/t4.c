/*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

	Copyright (c) GeoWorks 1992 -- All Rights Reserved

PROJECT:	PC GEOS
MODULE:		
FILE:		t4.c

AUTHOR:		Maryann Simmons, May 28, 1992

METHODS:

Name			Description
----			-----------

FUNCTIONS:

Scope	Name			Description
-----	----			-----------

REVISION HISTORY:
	Name	Date		Description
	----	----		-----------
	MS	5/28/92   	Initial version.

DESCRIPTION:
	

	$Id: t4.c,v 1.1 97/04/07 11:27:43 newdeal Exp $

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*/

/*       ----- Copyright(c), 1990-91  Halcyon Software ----- */

#include "ccitt.h"

T4	whttbl[] = {	/* encoding	*/ 
  {0x00ac, 0x0008, 0x0000, 0x00ff},  {0x0038, 0x0006, 0x0001, 0x003f}, 
  {0x000e, 0x0004, 0x0002, 0x000f},  {0x0001, 0x0004, 0x0003, 0x000f}, 
  {0x000d, 0x0004, 0x0004, 0x000f},  {0x0003, 0x0004, 0x0005, 0x000f}, 
  {0x0007, 0x0004, 0x0006, 0x000f},  {0x000f, 0x0004, 0x0007, 0x000f}, 
  {0x0019, 0x0005, 0x0008, 0x001f},  {0x0005, 0x0005, 0x0009, 0x001f}, 
  {0x001c, 0x0005, 0x000a, 0x001f},  {0x0002, 0x0005, 0x000b, 0x001f}, 
  {0x0004, 0x0006, 0x000c, 0x003f},  {0x0030, 0x0006, 0x000d, 0x003f}, 
  {0x000b, 0x0006, 0x000e, 0x003f},  {0x002b, 0x0006, 0x000f, 0x003f}, 
  {0x0015, 0x0006, 0x0010, 0x003f},  {0x0035, 0x0006, 0x0011, 0x003f}, 
  {0x0072, 0x0007, 0x0012, 0x007f},  {0x0018, 0x0007, 0x0013, 0x007f}, 
  {0x0008, 0x0007, 0x0014, 0x007f},  {0x0074, 0x0007, 0x0015, 0x007f}, 
  {0x0060, 0x0007, 0x0016, 0x007f},  {0x0010, 0x0007, 0x0017, 0x007f}, 
  {0x000a, 0x0007, 0x0018, 0x007f},  {0x006a, 0x0007, 0x0019, 0x007f}, 
  {0x0064, 0x0007, 0x001a, 0x007f},  {0x0012, 0x0007, 0x001b, 0x007f}, 
  {0x000c, 0x0007, 0x001c, 0x007f},  {0x0040, 0x0008, 0x001d, 0x00ff}, 
  {0x00c0, 0x0008, 0x001e, 0x00ff},  {0x0058, 0x0008, 0x001f, 0x00ff}, 
  {0x00d8, 0x0008, 0x0020, 0x00ff},  {0x0048, 0x0008, 0x0021, 0x00ff}, 
  {0x00c8, 0x0008, 0x0022, 0x00ff},  {0x0028, 0x0008, 0x0023, 0x00ff}, 
  {0x00a8, 0x0008, 0x0024, 0x00ff},  {0x0068, 0x0008, 0x0025, 0x00ff}, 
  {0x00e8, 0x0008, 0x0026, 0x00ff},  {0x0014, 0x0008, 0x0027, 0x00ff}, 
  {0x0094, 0x0008, 0x0028, 0x00ff},  {0x0054, 0x0008, 0x0029, 0x00ff}, 
  {0x00d4, 0x0008, 0x002a, 0x00ff},  {0x0034, 0x0008, 0x002b, 0x00ff}, 
  {0x00b4, 0x0008, 0x002c, 0x00ff},  {0x0020, 0x0008, 0x002d, 0x00ff}, 
  {0x00a0, 0x0008, 0x002e, 0x00ff},  {0x0050, 0x0008, 0x002f, 0x00ff}, 
  {0x00d0, 0x0008, 0x0030, 0x00ff},  {0x004a, 0x0008, 0x0031, 0x00ff}, 
  {0x00ca, 0x0008, 0x0032, 0x00ff},  {0x002a, 0x0008, 0x0033, 0x00ff}, 
  {0x00aa, 0x0008, 0x0034, 0x00ff},  {0x0024, 0x0008, 0x0035, 0x00ff}, 
  {0x00a4, 0x0008, 0x0036, 0x00ff},  {0x001a, 0x0008, 0x0037, 0x00ff}, 
  {0x009a, 0x0008, 0x0038, 0x00ff},  {0x005a, 0x0008, 0x0039, 0x00ff}, 
  {0x00da, 0x0008, 0x003a, 0x00ff},  {0x0052, 0x0008, 0x003b, 0x00ff}, 
  {0x00d2, 0x0008, 0x003c, 0x00ff},  {0x004c, 0x0008, 0x003d, 0x00ff}, 
  {0x00cc, 0x0008, 0x003e, 0x00ff},  {0x002c, 0x0008, 0x003f, 0x00ff}, 
  {0x001b, 0x0005, 0x0040, 0x001f},  {0x0009, 0x0005, 0x0080, 0x001f}, 
  {0x003a, 0x0006, 0x00c0, 0x003f},  {0x0076, 0x0007, 0x0100, 0x007f}, 
  {0x006c, 0x0008, 0x0140, 0x00ff},  {0x00ec, 0x0008, 0x0180, 0x00ff}, 
  {0x0026, 0x0008, 0x01c0, 0x00ff},  {0x00a6, 0x0008, 0x0200, 0x00ff}, 
  {0x0016, 0x0008, 0x0240, 0x00ff},  {0x00e6, 0x0008, 0x0280, 0x00ff}, 
  {0x0066, 0x0009, 0x02c0, 0x01ff},  {0x0166, 0x0009, 0x0300, 0x01ff}, 
  {0x0096, 0x0009, 0x0340, 0x01ff},  {0x0196, 0x0009, 0x0380, 0x01ff}, 
  {0x0056, 0x0009, 0x03c0, 0x01ff},  {0x0156, 0x0009, 0x0400, 0x01ff}, 
  {0x00d6, 0x0009, 0x0440, 0x01ff},  {0x01d6, 0x0009, 0x0480, 0x01ff}, 
  {0x0036, 0x0009, 0x04c0, 0x01ff},  {0x0136, 0x0009, 0x0500, 0x01ff}, 
  {0x00b6, 0x0009, 0x0540, 0x01ff},  {0x01b6, 0x0009, 0x0580, 0x01ff}, 
  {0x0032, 0x0009, 0x05c0, 0x01ff},  {0x0132, 0x0009, 0x0600, 0x01ff}, 
  {0x00b2, 0x0009, 0x0640, 0x01ff},  {0x0006, 0x0006, 0x0680, 0x003f}, 
  {0x01b2, 0x0009, 0x06c0, 0x01ff},  {0x0080, 0x000b, 0x0700, 0x07ff}, 
  {0x0180, 0x000b, 0x0740, 0x07ff},  {0x0580, 0x000b, 0x0780, 0x07ff}, 
  {0x0480, 0x000c, 0x07c0, 0x0fff},  {0x0c80, 0x000c, 0x0800, 0x0fff}, 
  {0x0280, 0x000c, 0x0840, 0x0fff},  {0x0a80, 0x000c, 0x0880, 0x0fff}, 
  {0x0680, 0x000c, 0x08c0, 0x0fff},  {0x0e80, 0x000c, 0x0900, 0x0fff}, 
  {0x0380, 0x000c, 0x0940, 0x0fff},  {0x0b80, 0x000c, 0x0980, 0x0fff}, 
  {0x0780, 0x000c, 0x09c0, 0x0fff},  {0x0f80, 0x000c, 0x0a00, 0x0fff}, 
  {0x0800, 0x000c, 0xffff, 0x0fff}, 
}; 
T4	whtsrt[] = {	/* encoding	*/ 
  {0x0001, 0x0004, 0x0003, 0x000f},  {0x0003, 0x0004, 0x0005, 0x000f}, 
  {0x0007, 0x0004, 0x0006, 0x000f},  {0x000d, 0x0004, 0x0004, 0x000f}, 
  {0x000e, 0x0004, 0x0002, 0x000f},  {0x000f, 0x0004, 0x0007, 0x000f}, 
  {0x0002, 0x0005, 0x000b, 0x001f},  {0x0005, 0x0005, 0x0009, 0x001f}, 
  {0x0009, 0x0005, 0x0080, 0x001f},  {0x0019, 0x0005, 0x0008, 0x001f}, 
  {0x001b, 0x0005, 0x0040, 0x001f},  {0x001c, 0x0005, 0x000a, 0x001f}, 
  {0x0004, 0x0006, 0x000c, 0x003f},  {0x0006, 0x0006, 0x0680, 0x003f}, 
  {0x000b, 0x0006, 0x000e, 0x003f},  {0x0015, 0x0006, 0x0010, 0x003f}, 
  {0x002b, 0x0006, 0x000f, 0x003f},  {0x0030, 0x0006, 0x000d, 0x003f}, 
  {0x0035, 0x0006, 0x0011, 0x003f},  {0x0038, 0x0006, 0x0001, 0x003f}, 
  {0x003a, 0x0006, 0x00c0, 0x003f},  {0x0008, 0x0007, 0x0014, 0x007f}, 
  {0x000a, 0x0007, 0x0018, 0x007f},  {0x000c, 0x0007, 0x001c, 0x007f}, 
  {0x0010, 0x0007, 0x0017, 0x007f},  {0x0012, 0x0007, 0x001b, 0x007f}, 
  {0x0018, 0x0007, 0x0013, 0x007f},  {0x0060, 0x0007, 0x0016, 0x007f}, 
  {0x0064, 0x0007, 0x001a, 0x007f},  {0x006a, 0x0007, 0x0019, 0x007f}, 
  {0x0072, 0x0007, 0x0012, 0x007f},  {0x0074, 0x0007, 0x0015, 0x007f}, 
  {0x0076, 0x0007, 0x0100, 0x007f},  {0x0014, 0x0008, 0x0027, 0x00ff}, 
  {0x0016, 0x0008, 0x0240, 0x00ff},  {0x001a, 0x0008, 0x0037, 0x00ff}, 
  {0x0020, 0x0008, 0x002d, 0x00ff},  {0x0024, 0x0008, 0x0035, 0x00ff}, 
  {0x0026, 0x0008, 0x01c0, 0x00ff},  {0x0028, 0x0008, 0x0023, 0x00ff}, 
  {0x002a, 0x0008, 0x0033, 0x00ff},  {0x002c, 0x0008, 0x003f, 0x00ff}, 
  {0x0034, 0x0008, 0x002b, 0x00ff},  {0x0040, 0x0008, 0x001d, 0x00ff}, 
  {0x0048, 0x0008, 0x0021, 0x00ff},  {0x004a, 0x0008, 0x0031, 0x00ff}, 
  {0x004c, 0x0008, 0x003d, 0x00ff},  {0x0050, 0x0008, 0x002f, 0x00ff}, 
  {0x0052, 0x0008, 0x003b, 0x00ff},  {0x0054, 0x0008, 0x0029, 0x00ff}, 
  {0x0058, 0x0008, 0x001f, 0x00ff},  {0x005a, 0x0008, 0x0039, 0x00ff}, 
  {0x0068, 0x0008, 0x0025, 0x00ff},  {0x006c, 0x0008, 0x0140, 0x00ff}, 
  {0x0094, 0x0008, 0x0028, 0x00ff},  {0x009a, 0x0008, 0x0038, 0x00ff}, 
  {0x00a0, 0x0008, 0x002e, 0x00ff},  {0x00a4, 0x0008, 0x0036, 0x00ff}, 
  {0x00a6, 0x0008, 0x0200, 0x00ff},  {0x00a8, 0x0008, 0x0024, 0x00ff}, 
  {0x00aa, 0x0008, 0x0034, 0x00ff},  {0x00ac, 0x0008, 0x0000, 0x00ff}, 
  {0x00b4, 0x0008, 0x002c, 0x00ff},  {0x00c0, 0x0008, 0x001e, 0x00ff}, 
  {0x00c8, 0x0008, 0x0022, 0x00ff},  {0x00ca, 0x0008, 0x0032, 0x00ff}, 
  {0x00cc, 0x0008, 0x003e, 0x00ff},  {0x00d0, 0x0008, 0x0030, 0x00ff}, 
  {0x00d2, 0x0008, 0x003c, 0x00ff},  {0x00d4, 0x0008, 0x002a, 0x00ff}, 
  {0x00d8, 0x0008, 0x0020, 0x00ff},  {0x00da, 0x0008, 0x003a, 0x00ff}, 
  {0x00e6, 0x0008, 0x0280, 0x00ff},  {0x00e8, 0x0008, 0x0026, 0x00ff}, 
  {0x00ec, 0x0008, 0x0180, 0x00ff},  {0x0032, 0x0009, 0x05c0, 0x01ff}, 
  {0x0036, 0x0009, 0x04c0, 0x01ff},  {0x0056, 0x0009, 0x03c0, 0x01ff}, 
  {0x0066, 0x0009, 0x02c0, 0x01ff},  {0x0096, 0x0009, 0x0340, 0x01ff}, 
  {0x00b2, 0x0009, 0x0640, 0x01ff},  {0x00b6, 0x0009, 0x0540, 0x01ff}, 
  {0x00d6, 0x0009, 0x0440, 0x01ff},  {0x0132, 0x0009, 0x0600, 0x01ff}, 
  {0x0136, 0x0009, 0x0500, 0x01ff},  {0x0156, 0x0009, 0x0400, 0x01ff}, 
  {0x0166, 0x0009, 0x0300, 0x01ff},  {0x0196, 0x0009, 0x0380, 0x01ff}, 
  {0x01b2, 0x0009, 0x06c0, 0x01ff},  {0x01b6, 0x0009, 0x0580, 0x01ff}, 
  {0x01d6, 0x0009, 0x0480, 0x01ff},  {0x0080, 0x000b, 0x0700, 0x07ff}, 
  {0x0180, 0x000b, 0x0740, 0x07ff},  {0x0580, 0x000b, 0x0780, 0x07ff}, 
  {0x0280, 0x000c, 0x0840, 0x0fff},  {0x0380, 0x000c, 0x0940, 0x0fff}, 
  {0x0480, 0x000c, 0x07c0, 0x0fff},  {0x0680, 0x000c, 0x08c0, 0x0fff}, 
  {0x0780, 0x000c, 0x09c0, 0x0fff},  {0x0800, 0x000c, 0xffff, 0x0fff}, 
  {0x0a80, 0x000c, 0x0880, 0x0fff},  {0x0b80, 0x000c, 0x0980, 0x0fff}, 
  {0x0c80, 0x000c, 0x0800, 0x0fff},  {0x0e80, 0x000c, 0x0900, 0x0fff}, 
  {0x0f80, 0x000c, 0x0a00, 0x0fff}, 
}; 
 
 
T4	blktbl[] = {	/* encoding	*/ 
  {0x03b0, 0x000a, 0x0000, 0x03ff},  {0x0002, 0x0003, 0x0001, 0x0007}, 
  {0x0003, 0x0002, 0x0002, 0x0003},  {0x0001, 0x0002, 0x0003, 0x0003}, 
  {0x0006, 0x0003, 0x0004, 0x0007},  {0x000c, 0x0004, 0x0005, 0x000f}, 
  {0x0004, 0x0004, 0x0006, 0x000f},  {0x0018, 0x0005, 0x0007, 0x001f}, 
  {0x0028, 0x0006, 0x0008, 0x003f},  {0x0008, 0x0006, 0x0009, 0x003f}, 
  {0x0010, 0x0007, 0x000a, 0x007f},  {0x0050, 0x0007, 0x000b, 0x007f}, 
  {0x0070, 0x0007, 0x000c, 0x007f},  {0x0020, 0x0008, 0x000d, 0x00ff}, 
  {0x00e0, 0x0008, 0x000e, 0x00ff},  {0x0030, 0x0009, 0x000f, 0x01ff}, 
  {0x03a0, 0x000a, 0x0010, 0x03ff},  {0x0060, 0x000a, 0x0011, 0x03ff}, 
  {0x0040, 0x000a, 0x0012, 0x03ff},  {0x0730, 0x000b, 0x0013, 0x07ff}, 
  {0x00b0, 0x000b, 0x0014, 0x07ff},  {0x01b0, 0x000b, 0x0015, 0x07ff}, 
  {0x0760, 0x000b, 0x0016, 0x07ff},  {0x00a0, 0x000b, 0x0017, 0x07ff}, 
  {0x0740, 0x000b, 0x0018, 0x07ff},  {0x00c0, 0x000b, 0x0019, 0x07ff}, 
  {0x0530, 0x000c, 0x001a, 0x0fff},  {0x0d30, 0x000c, 0x001b, 0x0fff}, 
  {0x0330, 0x000c, 0x001c, 0x0fff},  {0x0b30, 0x000c, 0x001d, 0x0fff}, 
  {0x0160, 0x000c, 0x001e, 0x0fff},  {0x0960, 0x000c, 0x001f, 0x0fff}, 
  {0x0560, 0x000c, 0x0020, 0x0fff},  {0x0d60, 0x000c, 0x0021, 0x0fff}, 
  {0x04b0, 0x000c, 0x0022, 0x0fff},  {0x0cb0, 0x000c, 0x0023, 0x0fff}, 
  {0x02b0, 0x000c, 0x0024, 0x0fff},  {0x0ab0, 0x000c, 0x0025, 0x0fff}, 
  {0x06b0, 0x000c, 0x0026, 0x0fff},  {0x0eb0, 0x000c, 0x0027, 0x0fff}, 
  {0x0360, 0x000c, 0x0028, 0x0fff},  {0x0b60, 0x000c, 0x0029, 0x0fff}, 
  {0x05b0, 0x000c, 0x002a, 0x0fff},  {0x0db0, 0x000c, 0x002b, 0x0fff}, 
  {0x02a0, 0x000c, 0x002c, 0x0fff},  {0x0aa0, 0x000c, 0x002d, 0x0fff}, 
  {0x06a0, 0x000c, 0x002e, 0x0fff},  {0x0ea0, 0x000c, 0x002f, 0x0fff}, 
  {0x0260, 0x000c, 0x0030, 0x0fff},  {0x0a60, 0x000c, 0x0031, 0x0fff}, 
  {0x04a0, 0x000c, 0x0032, 0x0fff},  {0x0ca0, 0x000c, 0x0033, 0x0fff}, 
  {0x0240, 0x000c, 0x0034, 0x0fff},  {0x0ec0, 0x000c, 0x0035, 0x0fff}, 
  {0x01c0, 0x000c, 0x0036, 0x0fff},  {0x0e40, 0x000c, 0x0037, 0x0fff}, 
  {0x0140, 0x000c, 0x0038, 0x0fff},  {0x01a0, 0x000c, 0x0039, 0x0fff}, 
  {0x09a0, 0x000c, 0x003a, 0x0fff},  {0x0d40, 0x000c, 0x003b, 0x0fff}, 
  {0x0340, 0x000c, 0x003c, 0x0fff},  {0x05a0, 0x000c, 0x003d, 0x0fff}, 
  {0x0660, 0x000c, 0x003e, 0x0fff},  {0x0e60, 0x000c, 0x003f, 0x0fff}, 
  {0x03c0, 0x000a, 0x0040, 0x03ff},  {0x0130, 0x000c, 0x0080, 0x0fff}, 
  {0x0930, 0x000c, 0x00c0, 0x0fff},  {0x0da0, 0x000c, 0x0100, 0x0fff}, 
  {0x0cc0, 0x000c, 0x0140, 0x0fff},  {0x02c0, 0x000c, 0x0180, 0x0fff}, 
  {0x0ac0, 0x000c, 0x01c0, 0x0fff},  {0x06c0, 0x000d, 0x0200, 0x1fff}, 
  {0x16c0, 0x000d, 0x0240, 0x1fff},  {0x0a40, 0x000d, 0x0280, 0x1fff}, 
  {0x1a40, 0x000d, 0x02c0, 0x1fff},  {0x0640, 0x000d, 0x0300, 0x1fff}, 
  {0x1640, 0x000d, 0x0340, 0x1fff},  {0x09c0, 0x000d, 0x0380, 0x1fff}, 
  {0x19c0, 0x000d, 0x03c0, 0x1fff},  {0x05c0, 0x000d, 0x0400, 0x1fff}, 
  {0x15c0, 0x000d, 0x0440, 0x1fff},  {0x0dc0, 0x000d, 0x0480, 0x1fff}, 
  {0x1dc0, 0x000d, 0x04c0, 0x1fff},  {0x0940, 0x000d, 0x0500, 0x1fff}, 
  {0x1940, 0x000d, 0x0540, 0x1fff},  {0x0540, 0x000d, 0x0580, 0x1fff}, 
  {0x1540, 0x000d, 0x05c0, 0x1fff},  {0x0b40, 0x000d, 0x0600, 0x1fff}, 
  {0x1b40, 0x000d, 0x0640, 0x1fff},  {0x04c0, 0x000d, 0x0680, 0x1fff}, 
  {0x14c0, 0x000d, 0x06c0, 0x1fff},  {0x0080, 0x000b, 0x0700, 0x07ff}, 
  {0x0180, 0x000b, 0x0740, 0x07ff},  {0x0580, 0x000b, 0x0780, 0x07ff}, 
  {0x0480, 0x000c, 0x07c0, 0x0fff},  {0x0c80, 0x000c, 0x0800, 0x0fff}, 
  {0x0280, 0x000c, 0x0840, 0x0fff},  {0x0a80, 0x000c, 0x0880, 0x0fff}, 
  {0x0680, 0x000c, 0x08c0, 0x0fff},  {0x0e80, 0x000c, 0x0900, 0x0fff}, 
  {0x0380, 0x000c, 0x0940, 0x0fff},  {0x0b80, 0x000c, 0x0980, 0x0fff}, 
  {0x0780, 0x000c, 0x09c0, 0x0fff},  {0x0f80, 0x000c, 0x0a00, 0x0fff}, 
  {0x0800, 0x000c, 0xffff, 0x0fff}, 
}; 
T4	blksrt[] = {	/* encoding	*/ 
  {0x0001, 0x0002, 0x0003, 0x0003},  {0x0003, 0x0002, 0x0002, 0x0003}, 
  {0x0002, 0x0003, 0x0001, 0x0007},  {0x0006, 0x0003, 0x0004, 0x0007}, 
  {0x0004, 0x0004, 0x0006, 0x000f},  {0x000c, 0x0004, 0x0005, 0x000f}, 
  {0x0018, 0x0005, 0x0007, 0x001f},  {0x0008, 0x0006, 0x0009, 0x003f}, 
  {0x0028, 0x0006, 0x0008, 0x003f},  {0x0010, 0x0007, 0x000a, 0x007f}, 
  {0x0050, 0x0007, 0x000b, 0x007f},  {0x0070, 0x0007, 0x000c, 0x007f}, 
  {0x0020, 0x0008, 0x000d, 0x00ff},  {0x00e0, 0x0008, 0x000e, 0x00ff}, 
  {0x0030, 0x0009, 0x000f, 0x01ff},  {0x0040, 0x000a, 0x0012, 0x03ff}, 
  {0x0060, 0x000a, 0x0011, 0x03ff},  {0x03a0, 0x000a, 0x0010, 0x03ff}, 
  {0x03b0, 0x000a, 0x0000, 0x03ff},  {0x03c0, 0x000a, 0x0040, 0x03ff}, 
  {0x0080, 0x000b, 0x0700, 0x07ff},  {0x00a0, 0x000b, 0x0017, 0x07ff}, 
  {0x00b0, 0x000b, 0x0014, 0x07ff},  {0x00c0, 0x000b, 0x0019, 0x07ff}, 
  {0x0180, 0x000b, 0x0740, 0x07ff},  {0x01b0, 0x000b, 0x0015, 0x07ff}, 
  {0x0580, 0x000b, 0x0780, 0x07ff},  {0x0730, 0x000b, 0x0013, 0x07ff}, 
  {0x0740, 0x000b, 0x0018, 0x07ff},  {0x0760, 0x000b, 0x0016, 0x07ff}, 
  {0x0130, 0x000c, 0x0080, 0x0fff},  {0x0140, 0x000c, 0x0038, 0x0fff}, 
  {0x0160, 0x000c, 0x001e, 0x0fff},  {0x01a0, 0x000c, 0x0039, 0x0fff}, 
  {0x01c0, 0x000c, 0x0036, 0x0fff},  {0x0240, 0x000c, 0x0034, 0x0fff}, 
  {0x0260, 0x000c, 0x0030, 0x0fff},  {0x0280, 0x000c, 0x0840, 0x0fff}, 
  {0x02a0, 0x000c, 0x002c, 0x0fff},  {0x02b0, 0x000c, 0x0024, 0x0fff}, 
  {0x02c0, 0x000c, 0x0180, 0x0fff},  {0x0330, 0x000c, 0x001c, 0x0fff}, 
  {0x0340, 0x000c, 0x003c, 0x0fff},  {0x0360, 0x000c, 0x0028, 0x0fff}, 
  {0x0380, 0x000c, 0x0940, 0x0fff},  {0x0480, 0x000c, 0x07c0, 0x0fff}, 
  {0x04a0, 0x000c, 0x0032, 0x0fff},  {0x04b0, 0x000c, 0x0022, 0x0fff}, 
  {0x0530, 0x000c, 0x001a, 0x0fff},  {0x0560, 0x000c, 0x0020, 0x0fff}, 
  {0x05a0, 0x000c, 0x003d, 0x0fff},  {0x05b0, 0x000c, 0x002a, 0x0fff}, 
  {0x0660, 0x000c, 0x003e, 0x0fff},  {0x0680, 0x000c, 0x08c0, 0x0fff}, 
  {0x06a0, 0x000c, 0x002e, 0x0fff},  {0x06b0, 0x000c, 0x0026, 0x0fff}, 
  {0x0780, 0x000c, 0x09c0, 0x0fff},  {0x0800, 0x000c, 0xffff, 0x0fff}, 
  {0x0930, 0x000c, 0x00c0, 0x0fff},  {0x0960, 0x000c, 0x001f, 0x0fff}, 
  {0x09a0, 0x000c, 0x003a, 0x0fff},  {0x0a60, 0x000c, 0x0031, 0x0fff}, 
  {0x0a80, 0x000c, 0x0880, 0x0fff},  {0x0aa0, 0x000c, 0x002d, 0x0fff}, 
  {0x0ab0, 0x000c, 0x0025, 0x0fff},  {0x0ac0, 0x000c, 0x01c0, 0x0fff}, 
  {0x0b30, 0x000c, 0x001d, 0x0fff},  {0x0b60, 0x000c, 0x0029, 0x0fff}, 
  {0x0b80, 0x000c, 0x0980, 0x0fff},  {0x0c80, 0x000c, 0x0800, 0x0fff}, 
  {0x0ca0, 0x000c, 0x0033, 0x0fff},  {0x0cb0, 0x000c, 0x0023, 0x0fff}, 
  {0x0cc0, 0x000c, 0x0140, 0x0fff},  {0x0d30, 0x000c, 0x001b, 0x0fff}, 
  {0x0d40, 0x000c, 0x003b, 0x0fff},  {0x0d60, 0x000c, 0x0021, 0x0fff}, 
  {0x0da0, 0x000c, 0x0100, 0x0fff},  {0x0db0, 0x000c, 0x002b, 0x0fff}, 
  {0x0e40, 0x000c, 0x0037, 0x0fff},  {0x0e60, 0x000c, 0x003f, 0x0fff}, 
  {0x0e80, 0x000c, 0x0900, 0x0fff},  {0x0ea0, 0x000c, 0x002f, 0x0fff}, 
  {0x0eb0, 0x000c, 0x0027, 0x0fff},  {0x0ec0, 0x000c, 0x0035, 0x0fff}, 
  {0x0f80, 0x000c, 0x0a00, 0x0fff},  {0x04c0, 0x000d, 0x0680, 0x1fff}, 
  {0x0540, 0x000d, 0x0580, 0x1fff},  {0x05c0, 0x000d, 0x0400, 0x1fff}, 
  {0x0640, 0x000d, 0x0300, 0x1fff},  {0x06c0, 0x000d, 0x0200, 0x1fff}, 
  {0x0940, 0x000d, 0x0500, 0x1fff},  {0x09c0, 0x000d, 0x0380, 0x1fff}, 
  {0x0a40, 0x000d, 0x0280, 0x1fff},  {0x0b40, 0x000d, 0x0600, 0x1fff}, 
  {0x0dc0, 0x000d, 0x0480, 0x1fff},  {0x14c0, 0x000d, 0x06c0, 0x1fff}, 
  {0x1540, 0x000d, 0x05c0, 0x1fff},  {0x15c0, 0x000d, 0x0440, 0x1fff}, 
  {0x1640, 0x000d, 0x0340, 0x1fff},  {0x16c0, 0x000d, 0x0240, 0x1fff}, 
  {0x1940, 0x000d, 0x0540, 0x1fff},  {0x19c0, 0x000d, 0x03c0, 0x1fff}, 
  {0x1a40, 0x000d, 0x02c0, 0x1fff},  {0x1b40, 0x000d, 0x0640, 0x1fff}, 
  {0x1dc0, 0x000d, 0x04c0, 0x1fff}, 
}; 
/*int	vrtcnt = 10;*/
/* 
T4	vrt[] = {	encoding	
  {0x0008, 0x0004, 0xffff, 0x000f},  {0x0004, 0x0003, 0xffff, 0x0007}, 
  {0x0020, 0x0007, 0xffff, 0x007f},  {0x0010, 0x0006, 0xffff, 0x003f}, 
  {0x0002, 0x0003, 0xffff, 0x0007},  {0x0001, 0x0001, 0xffff, 0x0001}, 
  {0x0006, 0x0003, 0xffff, 0x0007},  {0x0030, 0x0006, 0xffff, 0x003f}, 
  {0x0060, 0x0007, 0xffff, 0x007f},  {0x0800, 0x000c, 0xffff, 0x0fff}, 
}; 
T4	vrtsrt[] = {	 encoding	 
  {0x0001, 0x0001, 0xffff, 0x0001},  {0x0002, 0x0003, 0xffff, 0x0007}, 
  {0x0004, 0x0003, 0xffff, 0x0007},  {0x0006, 0x0003, 0xffff, 0x0007}, 
  {0x0008, 0x0004, 0xffff, 0x000f},  {0x0010, 0x0006, 0xffff, 0x003f}, 
  {0x0030, 0x0006, 0xffff, 0x003f},  {0x0020, 0x0007, 0xffff, 0x007f}, 
  {0x0060, 0x0007, 0xffff, 0x007f},  {0x0800, 0x000c, 0xffff, 0x0fff}, 
}; 
*/
