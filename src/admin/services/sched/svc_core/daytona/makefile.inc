!IF 0

Copyright (C) Microsoft Corporation, 1997 - 1999

Module Name:

    makefile.inc.

!ENDIF

$(NTTARGETFILE0):	..\..\idl\$(O)\$(@F)
    copy ..\..\idl\$(O)\$(@F) $@
