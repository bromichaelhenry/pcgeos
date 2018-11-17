##############################################################################
#
#	Copyright (c) Berkeley Softworks 1993 -- All Rights Reserved
#
# PROJECT:	PC GEOS
# MODULE:	Epson late model 24-pin Printer Driver for Zoomer
# FILE:		epshi24z.gp
#
# AUTHOR:	Jim, 2/90, from vidmem.gp
#
# Parameters file for: epshi24z.geo
#
#	$Id: epshi24z.gp,v 1.1 97/04/18 11:54:08 newdeal Exp $
#
##############################################################################
#
# Specify permanent name first
#
name	epshi24z.drvr
#
# Long name
#
longname "Epson new LQ driver for Z"
#
# DB Token
#
tokenchars "PRDR"
tokenid 0
#
#
# Specify geode type
#
type	driver, single
#
# Import kernel routine definitions
#
library	geos
library	ui
library	spool
#
# Make this module fixed so we can put the strategy routine there
#
resource Entry fixed code read-only shared
#
# Make driver info resource accessible from user-level processes
#
resource DriverInfo 	lmem, data, shared, read-only, conforming
resource lq850Info 	data, shared, read-only, conforming
resource lq860Info 	data, shared, read-only, conforming
resource lq1050Info 	data, shared, read-only, conforming
resource lq2550Info 	data, shared, read-only, conforming
resource printerFontInfo data, shared, read-only, conforming
resource gamma30        data, shared, read-only, conforming
resource CorrectInk	data, shared, read-only, conforming

resource OptionsASF0BinResource       ui-object
resource OptionsASF1BinResource       ui-object
resource OptionsASF2BinResource       ui-object
