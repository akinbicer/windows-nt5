FUSION_LIB_DEST = $(FUSION_URT_LIB_DEST)
C_DEFINES = $(C_DEFINES) -DFUSION_URT=1 -DFUSION_ENABLE_UNWRAPPED_NEW=1 -DFUSION_ENABLE_UNWRAPPED_DELETE=1
FUSION_BUILD_TYPE_PREFIX=urt
FUSION_INC_PATH=$(FUSION_ALL_INC_PATH);$(FUSION_URT_INC_PATH)
FUSION_DIRECTDB_INC_DEST=$(FUSION_PATH)\directdb\inc\urt
USE_RTTI=1
FUSION_LIB_PATH = $(FUSION_URT_LIB_PATH)
