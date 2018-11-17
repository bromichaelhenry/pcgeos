MACROENG.obj \
MACROENG.eobj: MACROENG/MACROENGMANAGER.ASM \
                STDAPP.DEF GEOS.DEF GEODE.DEF RESOURCE.DEF EC.DEF LMEM.DEF \
                OBJECT.DEF GRAPHICS.DEF FONTID.DEF FONT.DEF COLOR.DEF \
                GSTRING.DEF TEXT.DEF CHAR.DEF HEAP.DEF UI.DEF FILE.DEF \
                VM.DEF WIN.DEF INPUT.DEF HWR.DEF LOCALIZE.DEF SLLANG.DEF \
                OBJECTS/PROCESSC.DEF OBJECTS/METAC.DEF CHUNKARR.DEF \
                GEOWORKS.DEF GCNLIST.DEF TIMEDATE.DEF \
                OBJECTS/TEXT/TCOMMON.DEF STYLESH.DEF IACP.DEF \
                OBJECTS/UIINPUTC.DEF OBJECTS/VISC.DEF OBJECTS/VCOMPC.DEF \
                OBJECTS/VCNTC.DEF INTERNAL/VUTILS.DEF OBJECTS/GENC.DEF \
                DISK.DEF DRIVE.DEF UDIALOG.DEF OBJECTS/GINTERC.DEF \
                TOKEN.DEF OBJECTS/CLIPBRD.DEF OBJECTS/GSYSC.DEF \
                OBJECTS/GPROCC.DEF ALB.DEF OBJECTS/GFIELDC.DEF \
                OBJECTS/GSCREENC.DEF OBJECTS/GFSELC.DEF \
                OBJECTS/GVIEWC.DEF OBJECTS/GCONTC.DEF OBJECTS/GCTRLC.DEF \
                OBJECTS/GDOCC.DEF OBJECTS/GDOCCTRL.DEF \
                OBJECTS/GDOCGRPC.DEF OBJECTS/GEDITCC.DEF \
                OBJECTS/GVIEWCC.DEF OBJECTS/GTOOLCC.DEF \
                OBJECTS/GPAGECC.DEF OBJECTS/GPENICC.DEF \
                OBJECTS/GGLYPHC.DEF OBJECTS/GTRIGC.DEF \
                OBJECTS/GBOOLGC.DEF OBJECTS/GITEMGC.DEF \
                OBJECTS/GDLISTC.DEF OBJECTS/GITEMC.DEF OBJECTS/GBOOLC.DEF \
                OBJECTS/GDISPC.DEF OBJECTS/GDCTRLC.DEF OBJECTS/GPRIMC.DEF \
                OBJECTS/GAPPC.DEF OBJECTS/GTEXTC.DEF OBJECTS/GGADGETC.DEF \
                OBJECTS/GVALUEC.DEF OBJECTS/GTOOLGC.DEF \
                INTERNAL/GUTILS.DEF OBJECTS/HELPCC.DEF OBJECTS/EMENUC.DEF \
                OBJECTS/EMOMC.DEF OBJECTS/EMTRIGC.DEF INTERNAL/UPROCC.DEF \
                TIMER.DEF THREAD.DEF OBJECTS/INPUTC.DEF INTERNAL/IM.DEF \
                INTERNAL/SEMINT.DEF MACROENG.DEF
MACRODEM.obj \
MACRODEM.eobj: STDAPP.GOH OBJECT.GOH UI.GOH OBJECTS/METAC.GOH \
                OBJECTS/INPUTC.GOH OBJECTS/CLIPBRD.GOH \
                OBJECTS/UIINPUTC.GOH IACP.GOH OBJECTS/WINC.GOH \
                OBJECTS/GPROCC.GOH ALB.GOH OBJECTS/PROCESSC.GOH \
                OBJECTS/VISC.GOH OBJECTS/VCOMPC.GOH OBJECTS/VCNTC.GOH \
                OBJECTS/GAPPC.GOH OBJECTS/GENC.GOH OBJECTS/GINTERC.GOH \
                OBJECTS/GPRIMC.GOH OBJECTS/GDISPC.GOH OBJECTS/GTRIGC.GOH \
                OBJECTS/GVIEWC.GOH OBJECTS/GTEXTC.GOH OBJECTS/VTEXTC.GOH \
                OBJECTS/GCTRLC.GOH GCNLIST.GOH SPOOL.GOH \
                OBJECTS/GFSELC.GOH OBJECTS/GGLYPHC.GOH \
                OBJECTS/GDOCCTRL.GOH OBJECTS/GDOCGRPC.GOH \
                OBJECTS/GDOCC.GOH OBJECTS/GCONTC.GOH OBJECTS/GDCTRLC.GOH \
                OBJECTS/GEDITCC.GOH OBJECTS/GBOOLGC.GOH \
                OBJECTS/GITEMGC.GOH OBJECTS/GDLISTC.GOH \
                OBJECTS/GITEMC.GOH OBJECTS/GBOOLC.GOH \
                OBJECTS/GGADGETC.GOH OBJECTS/GTOOLCC.GOH \
                OBJECTS/GVALUEC.GOH OBJECTS/GTOOLGC.GOH \
                OBJECTS/HELPCC.GOH ART/APP1.GOH ART/DOC1.GOH
MACRODEM.obj \
MACRODEM.eobj: MACRODEM/MACRODEM.GOC GEOS.H HEAP.H GEODE.H RESOURCE.H \
                EC.H OBJECT.H LMEM.H GRAPHICS.H FONTID.H FONT.H COLOR.H \
                GSTRING.H TIMER.H VM.H DBASE.H LOCALIZE.H ANSI/CTYPE.H \
                TIMEDATE.H FILE.H SLLANG.H SYSTEM.H GEOWORKS.H CHUNKARR.H \
                OBJECTS/HELPCC.H DISK.H DRIVE.H INPUT.H CHAR.H HWR.H \
                WIN.H UDIALOG.H OBJECTS/GINTERC.H OBJECTS/TEXT/TCOMMON.H \
                STYLESH.H DRIVER.H THREAD.H PRINT.H INTERNAL/SPOOLINT.H \
                SERIALDR.H PARALLDR.H HUGEARR.H FILEENUM.H MATH.H SOUND.H \
                ANSI/STRING.H TOKEN.H MACROENG.H

macrorEC.geo macror.geo : GEOS.LDF UI.LDF ANSIC.LDF 