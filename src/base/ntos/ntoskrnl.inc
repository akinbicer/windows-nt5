!if defined (BUILD_CHECKED_KERNEL)
NTDEBUG=ntsd
FREEBUILD=0
!endif

!if !$(FREEBUILD)
NT_UP=0
!endif

GPSIZE=32

VC7_SYMBOLS=1
