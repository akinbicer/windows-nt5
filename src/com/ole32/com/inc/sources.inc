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

TARGETNAME=   inc
TARGETPATH=   obj
TARGETTYPE=   LIBRARY

INCLUDES =    ..\..\..\common\$(DEST_TREE);..\..\..\ih;..\..\inc
INCLUDES =    $(INCLUDES);..\..\objact;..\..\dcomrem;..\..\..\dcomss\olescm
INCLUDES =    $(INCLUDES);..\..\..\idl\public\$(DEST_TREE)\$(O)
INCLUDES=     $(INCLUDES);..\..\..\idl\internal\$(DEST_TREE)\$(O)
INCLUDES=     $(INCLUDES);..\..\..\idl\private\$(DEST_TREE)\$(O)
INCLUDES=     $(INCLUDES);$(BASE_INC_PATH)

SOURCES=      \
              ..\cevent.cxx   \
              ..\clskey.cxx   \
              ..\dbgpopup.cxx \
              ..\pathkey.cxx  \
              ..\pattbl.cxx   \
              ..\refcnt.cxx   \
              ..\rotdata.cxx  \
              ..\rothelp.cxx  \
              ..\smblock.cxx  \
              ..\smcreate.cxx \
              ..\smmutex.cxx  \
              ..\xmit.cxx


UMTYPE=       windows

!include ..\..\precomp2.inc

SYNCHRONIZE_BLOCK=1
