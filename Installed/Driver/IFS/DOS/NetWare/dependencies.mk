NETWAREMANAGER.obj \
NETWAREMANAGER.eobj: GEOS.DEF HEAP.DEF GEODE.DEF RESOURCE.DEF EC.DEF LMEM.DEF \
                SYSTEM.DEF LOCALIZE.DEF SLLANG.DEF DRIVE.DEF DISK.DEF \
                FILE.DEF DRIVER.DEF TIMEDATE.DEF SEM.DEF TIMER.DEF \
                INITFILE.DEF INTERNAL/SEMINT.DEF INTERNAL/INTERRUP.DEF \
                INTERNAL/DOS.DEF FILEENUM.DEF INTERNAL/FILEINT.DEF \
                INTERNAL/DRIVEINT.DEF INTERNAL/DISKINT.DEF \
                INTERNAL/FSD.DEF INTERNAL/LOG.DEF INTERNAL/HEAPINT.DEF \
                SYSSTATS.DEF INTERNAL/GEODESTR.DEF INTERNAL/FILESTR.DEF \
                INTERNAL/FSDRIVER.DEF INTERNAL/NETWARE.DEF \
                INTERNAL/DOSFSDR.DEF NET.DEF OBJECT.DEF \
                INTERNAL/NETDR.DEF INTERNAL/SERIALDR.DEF \
                INTERNAL/STREAMDR.DEF INTERNAL/SOCKETID.DEF NETWARE.DEF \
                NETWARECONSTANT.DEF NETWARESTRINGS.ASM \
                NETWAREVARIABLE.DEF NETWAREENTRY.ASM NETWAREDISK.ASM \
                NETWAREINITEXIT.ASM NETWARESECONDARY.ASM NETWAREUTILS.ASM \
                NETWARESPECIFIC.ASM

NetWareEC.geo NetWare.geo : GEOS.LDF 