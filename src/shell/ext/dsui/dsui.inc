DSUI_DIR=   $(PROJECT_ROOT)\ext\dsui

INCLUDES=   ..;\
            $(DSUI_DIR)\inc;\
            $(WINDOWS_INC_PATH);\
            $(DS_INC_PATH);

!IFNDEF MSC_WARNING_LEVEL
MSC_WARNING_LEVEL=/W3
!ENDIF
MSC_WARNING_LEVEL=$(MSC_WARNING_LEVEL) /WX

USE_ATL=1
USE_NOLIBS=1
USE_MSVCRT=1
USE_NATIVE_EH=1

UMTYPE=windows
DLLENTRY=_DllMainCRTStartup

# always expect the latest IE
WIN32_IE_VERSION=$(LATEST_WIN32_IE_VERSION)

C_DEFINES=$(C_DEFINES) -DUNICODE
LIBRARY_PLATFORM_PATH=$(SDK_LIB_DEST)
SHELL_LIBS= $(SHELL_LIB_PATH)\shell32p.lib   \
            $(WINDOWS_LIB_PATH)\user32p.lib

