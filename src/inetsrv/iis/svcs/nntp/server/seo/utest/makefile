!IFDEF NTMAKEENV
!INCLUDE $(NTMAKEENV)\makefile.def
!ELSE

# -----------------------------------------------------------------------------
#

!INCLUDE $(EXDEV)\globenv.mak

PRODTYPE = DLL
COMPONENT = $(STAXPT)
COMPNAME = STAXPT
BASENAME = filttest
EXPORT_LIBS = 0

!INCLUDE $(EXDEV)\xmake1.mak

!INCLUDE $(STAXPT)\src\inc\stackcpp.mak

# -----------------------------------------------------------------------------
#

NOMEMBASE = 1
H = $(STAXPT)\src\news\server\seo\utest
ENTRYPOINT	= DllMain

IDLTARG = seo.h seo_i.c
IDLSOURCE = $(EXC)\inc\seo.idl

OTHERINCS 	= -I $(COMPONENT)\src\inc 				\
		  -I $(EXOBJCOMP)\imsg\$(PLATFORM)\$(FLAVOR) 		\
		  -I $(EXOBJCOMP)\nntpfilt\$(PLATFORM)\$(FLAVOR) 	\
		  -I $(EXOBJCOMP)\adsiisex\$(PLATFORM)\$(FLAVOR)        \
		  -I $(EXOBJDIR) 					\
		  -I $(COMPONENT)\src\news\core\include 		\
		  -I $(COMPONENT)\src\core\imsg 			\
		  -I $(COMPONENT)\src\core\nntpfilt			\
		  -I $(COMPONENT)\src\core\testlib			\
		  -I $(COMPONENT)\src\core\admin\adsi\include   \


OTHERRESINCS	= $(MFCINC)

CPPPCH		= stdafx
CPPPCHSRCEXT	= .cpp

USERDEFS	= -D_ATL_STATIC_REGISTRY -D_WINDLL -D_ATL_NO_DEBUG_CRT
CMODEL		= $(CMODEL:-D_NTSDK=)
CFLAGS		= $(CFLAGS:-J=)
CFLAGS		= $(CFLAGS) -GX -Yd

DEFPLUSOBJS	= 1

OTHERLIBS=                      	\
	$(K2LIBS)\isatq.lib		\
	$(K2LIBS)\infocomm.lib		\
	$(K2LIBS)\coadmin.lib		\
	$(EXLIB)\ole32.lib		\
	$(EXLIB)\uuid.lib		\
	$(EXLIB)\oleaut32.lib		\
	$(LOCALIMPLIB)\exstrace.lib	\

DEFFILE		= $(H)\filttest.def
IMPLIB_DEF	= $(DEFFILE)

SOURCES =           		\
	dllmain.cpp				\
	filttest.cpp			\
	nntpadmt.cpp			\
	nntpmsgt.cpp			\
	nntpseot.cpp		

RESOURCES	= filttest
RESOURCEDIR	= $H

OTHERSUBS = $H\makefile

DEPFILE = $(BASENAME).dep

TLBBASE			= filttest
TLBSRC			= $(H)\$(TLBBASE).idl
TLB			= $(EXOBJDIR)\$(TLBBASE).tlb
TLBHDR			= $(EXOBJDIR)\$(TLBBASE).h
TLBIID			= $(EXOBJDIR)\$(TLBBASE)_i.c
TLBPROXY		= $(EXOBJDIR)\$(TLBBASE)_p.c
TLBDLLDATA		= $(EXOBJDIR)\dlldata.c
TLBTARGETS		= $(TLBHDR) $(TLB) $(TLBIID)
TLBINC			= $(USERINCS) $(OTHERINCS)
TLBFLAGS		= -Zp8 -char unsigned -ms_ext -c_ext -cpp_cmd $(CC) -Oicf

OTHERDEPS	= $(OTHERDEPS) $(TLB) $(TLBHDR)
OTHERDEPSRC	= $(OTHERDEPSRC) $(TLB) $(TLBHDR)

$(TLBTARGETS): $(TLBSRC)
	echo ++++++++++++++++++++++++++++++++++++++++
	echo BUILDING Type Library $(TLB)
	-md $(EXOBJDIR)
	midl $(DEFS) $(TLBFLAGS)	\
		$(TLBINC)				\
		/h $(TLBHDR)			\
		/tlb $(TLB)				\
		/dlldata $(TLBDLLDATA)	\
		/iid $(TLBIID)			\
		/proxy $(TLBPROXY)		\
		$(TLBSRC)

mkdeps: targdir $(TLBHDR)

!INCLUDE $(EXDEV)\xmake2.mak
!ENDIF #NTMAKEENV
