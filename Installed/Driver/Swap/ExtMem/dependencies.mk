EXTMEM.obj \
EXTMEM.eobj: GEOS.DEF HEAP.DEF GEODE.DEF RESOURCE.DEF EC.DEF DRIVER.DEF \
                LMEM.DEF SEM.DEF SYSTEM.DEF LOCALIZE.DEF SLLANG.DEF \
                INITFILE.DEF INTERNAL/SWAPDR.DEF INTERNAL/INTERRUP.DEF \
                INTERNAL/DRIVEINT.DEF DRIVE.DEF INTERNAL/SEMINT.DEF \
                INTERNAL/FILEINT.DEF FILE.DEF FILEENUM.DEF \
                INTERNAL/DOS.DEF INTERNAL/SWAP.DEF

ExtMemEC.geo ExtMem.geo : GEOS.LDF SWAP.LDF 