!IF 0

Copyright (c) 1998  Microsoft Corporation

Module Name:

    sources.

Abstract:

    This file specifies the target component being built and the list of
    sources files needed to build that component.  Also specifies optional
    compiler switches and libraries that are unique for the component being
    built.

!ENDIF

TARGETNAME=   catalog
TARGETPATH=   obj
TARGETTYPE=   LIBRARY

INCLUDES    = obj
INCLUDES=     $(INCLUDES);..\..\..\idl\public\daytona\$(O)
INCLUDES=     $(INCLUDES);..\..\..\idl\private\daytona
INCLUDES=     $(INCLUDES);..\..\..\idl\private\daytona\$(O)
INCLUDES=     $(INCLUDES);..\..\..\ih
INCLUDES=     $(INCLUDES);..\..\inc
INCLUDES=     $(INCLUDES);$(BASE_INC_PATH)


C_DEFINES=    $(C_DEFINES) -DDARWIN_ENABLED -DMSWMSG

SOURCES=      $(SOURCES)                                      \
              ..\cache.cxx                                    \
              ..\catalog.cxx                                  \
              ..\class.cxx                                    \
              ..\noclass.cxx                                  \
              ..\noenum.cxx                                   \
              ..\notify.cxx                                   \
              ..\process.cxx                                  \
              ..\regcat.cxx                                   \
              ..\services.cxx                                 \
              ..\sxscat.cxx                                   \
              ..\sxsclass.cxx                                 \
              ..\regmisc.c

UMTYPE=       windows



