# $Id: local.mk,v 1.1 97/04/18 11:46:48 newdeal Exp $

.PATH.asm .PATH.def : ../Common $(INSTALL_DIR:H)/Common

PROTOCONST	= FS

GEODE		= cvgfs


#include <$(SYSMAKEFILE)>

