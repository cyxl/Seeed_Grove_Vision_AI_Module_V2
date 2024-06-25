##
# \brief	definitions for source codes directories
##

###############################################################################
## ALL ##
CSRCS_DIR		= $(OS_CSRCDIR) $(OS_HAL_CSRCDIR) $(DEVICE_CSRC_DIR) $(BOARD_CSRC_DIR) $(DRIVERS_CSRCDIR) $(EXTERNAL_CSRCDIR)\
				$(TRUSTZONE_SEC_CSRC_DIR) $(NSC_CSRC_DIR) $(MID_CSRCDIR) $(LIB_CSRCDIR) $(LIB_INFERENCE_ENGINE_CSRCDIR) $(LIB_CV_CSRCDIR) $(LIB_AUDIOALGO_CSRCDIR) \
				$(INTEGRATE_CSRCDIR) $(HWACCAUTOTEST_CSRCDIR) $(SCENARIO_APP_CSRCDIR) $(APPL_CSRC_DIR) $(TFM_CSRC_DIR) $(INTERFACE_CSRC_DIR) $(CMSIS_DRIVERS_CSRC_DIR) $(CUSTOMER_CSRC_DIR)
CXXSRCS_DIR		= $(OS_CXXSRCDIR) $(OS_HAL_CXXSRCDIR) $(DEVICE_CXXSRC_DIR) $(BOARD_CXXSRC_DIR) $(DRIVERS_CXXSRC_DIR) $(EXTERNAL_CXXSRC_DIR)\
				$(TRUSTZONE_SEC_CXXSRC_DIR) $(NSC_CXXSRC_DIR) $(MID_CXXSRCDIR) $(LIB_CXXSRCDIR) $(LIB_INFERENCE_ENGINE_CXXSRCSDIR) $(LIB_CV_CXXSRCSDIR) $(LIB_AUDIOALGO_CXXSRCSDIR) \
				$(INTEGRATE_CXXSRCDIR) $(HWACCAUTOTEST_CXXSRCDIR) $(SCENARIO_APP_CXXSRCDIR) $(APPL_CXXSRC_DIR) $(TFM_CXXSRCS_DIR) $(INTERFACE_CXXSRC_DIR) $(CMSIS_DRIVERS_CXXSRC_DIR) $(CUSTOMER_CXXSRC_DIR)
CCSRCS_DIR		= $(OS_CCSRCDIR) $(OS_HAL_CCSRCDIR) $(DEVICE_CCSRC_DIR) $(BOARD_CCSRCDIR) $(DRIVERS_CCSRC_DIR) $(EXTERNAL_CCSRC_DIR)\
				$(TRUSTZONE_SEC_CCSRC_DIR) $(NSC_CCSRC_DIR) $(MID_CCSRCDIR) $(LIB_CCSRCDIR) \
				$(INTEGRATE_CCSRCDIR) $(SCENARIO_APP_CCSRCDIR) $(APPL_CCSRC_DIR) $(TFM_CCSRC_DIR) $(INTERFACE_CCSRC_DIR) $(CMSIS_DRIVERS_CCSRC_DIR) $(CUSTOMER_CCSRC_DIR)
ASMSRCS_DIR		= $(OS_ASMSRCDIR) $(OS_HAL_ASMSRCDIR) $(DEVICE_ASMSRC_DIR) $(BOARD_ASMSRC_DIR) $(DRIVERS_ASMSRCDIR) $(EXTERNAL_ASMSRCDIR)\
				$(TRUSTZONE_SEC_ASMSRC_DIR) $(NSC_ASMSRC_DIR) $(MID_ASMSRCDIR) $(LIB_ASMSRCDIR) $(LIB_INFERENCE_ENGINE_ASMSRCDIR) $(LIB_CV_ASMSRCDIR) $(LIB_AUDIOALGO_ASMSRCDIR) \
				$(INTEGRATE_ASMSRCDIR) $(HWACCAUTOTEST_ASMSRCDIR) $(SCENARIO_APP_ASMSRCDIR) $(APPL_ASMSRC_DIR) $(TFM_ASMSRC_DIR) $(INTERFACE_ASMSRC_DIR) $(CMSIS_DRIVERS_ASMSRC_DIR) $(CUSTOMER_ASMSRC_DIR)
INCS_DIR		= $(OS_INCDIR) $(OS_HAL_INCDIR) $(BOARD_INCDIR) $(LIB_INCDIR) $(BOARD_INC_DIR) $(DEVICE_INC_DIR) $(DRIVERS_INCDIR) $(EXTERNAL_INCDIR) $(LIB_BSS_DATA_INCDIR) \
				$(TRUSTZONE_SEC_INC_DIR) $(TRUSTZONE_CFG_INC_DIR) $(NSC_INC_DIR) $(MID_INCDIR) $(LIB_INFERENCE_ENGINE_INCDIR) $(LIB_CV_INCDIR) $(LIB_AUDIOALGO_INCDIR) $(HWACCAUTOTEST_INCDIR)\
				$(SCENARIO_APP_INCDIR) $(APPL_INC_DIR) $(LINKER_INC_DIR) $(TFM_INC_DIR) $(INTERFACE_INC_DIR) $(CMSIS_DRIVERS_INC_DIR) $(CUSTOMER_INC_DIR) 
###############################################################################
##
# Collect Application Source Files
##
APPL_CSRCS = $(call get_csrcs, $(APPL_CSRC_DIR))
APPL_ASMSRCS = $(call get_asmsrcs, $(APPL_ASMSRC_DIR))
APPL_CXXSRCS = $(call get_cxxsrcs, $(APPL_CXXSRC_DIR))
APPL_CCSRCS = $(call get_ccsrcs, $(APPL_CCSRC_DIR))

##
# Collect Application Object Files
##
APPL_COBJS = $(call get_relobjs, $(APPL_CSRCS))
APPL_ASMOBJS = $(call get_relobjs, $(APPL_ASMSRCS))
APPL_CXXOBJS = $(call get_relobjs, $(APPL_CXXSRCS))
APPL_CCOBJS = $(call get_relobjs, $(APPL_CCSRCS))
APPL_OBJS = $(APPL_COBJS) $(APPL_ASMOBJS) $(APPL_CXXOBJS) $(APPL_CCOBJS)

##
# Collect Integrate CLI Object Files
##
INTEGRATE_COBJS = $(call get_relobjs, $(INTEGRATE_CSRCS))
INTEGRATE_ASMOBJS = $(call get_relobjs, $(INTEGRATE_ASMSRCS))
INTEGRATE_CXXOBJS = $(call get_relobjs, $(INTEGRATE_CXXSRCS))
INTEGRATE_CCOBJS = $(call get_relobjs, $(INTEGRATE_CCSRCS))
INTEGRATE_OBJS = $(INTEGRATE_COBJS) $(INTEGRATE_ASMOBJS) $(INTEGRATE_CXXOBJS) $(INTEGRATE_CCOBJS)

HWACCAUTOTEST_COBJS = $(call get_relobjs, $(HWACCAUTOTEST_CSRCS))
HWACCAUTOTEST_ASMOBJS = $(call get_relobjs, $(HWACCAUTOTEST_ASMSRCS))
HWACCAUTOTEST_CXXOBJS = $(call get_relobjs, $(HWACCAUTOTEST_CXXSRCS))
HWACCAUTOTEST_CCOBJS = $(call get_relobjs, $(HWACCAUTOTEST_CCSRCS))
HWACCAUTOTEST_OBJS = $(HWACCAUTOTEST_COBJS) $(HWACCAUTOTEST_ASMOBJS) $(HWACCAUTOTEST_CXXOBJS) $(HWACCAUTOTEST_CCOBJS)


SCENARIO_APP_COBJS = $(call get_relobjs, $(SCENARIO_APP_CSRCS))
SCENARIO_APP_ASMOBJS = $(call get_relobjs, $(SCENARIO_APP_ASMSRCS))
SCENARIO_APP_CXXOBJS = $(call get_relobjs, $(SCENARIO_APP_CXXSRCS))
SCENARIO_APP_CCOBJS = $(call get_relobjs, $(SCENARIO_APP_CCSRCS))
SCENARIO_APP_OBJS = $(SCENARIO_APP_COBJS) $(SCENARIO_APP_ASMOBJS) $(SCENARIO_APP_CXXOBJS) $(SCENARIO_APP_CCOBJS)

#########ALL DIRECTOIRES & SOURCE FILES & OBJECT FILES COLLECTION#############
##
# Collect all include/c/asm/cpp directories
##
ALL_INC_DIRS = $(sort $(INCS_DIR))
ALL_CSRC_DIRS = $(sort $(CSRCS_DIR))
ALL_CCSRC_DIRS = $(sort $(CCSRCS_DIR))
ALL_ASMSRC_DIRS = $(sort $(ASMSRCS_DIR))
ALL_CXXSRC_DIRS = $(sort $(CXXSRCS_DIR))

##
# Collect all sources files
##
ALL_CSRCS = $(sort $(BOARD_CSRCS) $(DEVICE_CSRCS) $(DRIVERS_CSRCS) $(EXTERNAL_CSRCS) $(LIB_INFERENCE_ENGINE_CSRCS) $(LIB_CV_CSRCS) $(LIB_AUDIOALGO_CSRCS) $(LIB_CSRCS) $(MID_CSRCS) $(OS_CSRCS) $(OS_HAL_CSRCS) $(INTEGRATE_CSRCS) $(HWACCAUTOTEST_CSRCS) $(SCENARIO_APP_CSRCS) $(APPL_CSRCS) $(TRUSTZONE_SEC_CSRCS) $(NSC_CSRCS) $(TFM_CSRCS) $(INTERFACE_CSRCS) $(CMSIS_DRIVERS_CSRCS) $(CUSTOMER_CSRCS))
ALL_ASMSRCS = $(sort $(BOARD_ASMSRCS) $(DEVICE_ASMSRCS) $(DRIVERS_ASMSRCS) $(EXTERNAL_ASMSRCS) $(LIB_ASMSRCS) $(LIB_AUDIOALGO_ASMSRCS) $(LIB_INFERENCE_ENGINE_ASMSRCS) $(LIB_CV_ASMSRCS) $(MID_ASMSRCS) $(OS_ASMSRCS) $(OS_HAL_ASMSRCS) $(INTEGRATE_ASMSRCS) $(HWACCAUTOTEST_ASMSRCS) $(SCENARIO_APP_ASMSRCS) $(APPL_ASMSRCS) $(TRUSTZONE_SEC_ASMSRCS) $(NSC_ASMSRCS) $(TFM_ASMSRCS) $(INTERFACE_ASMSRCS) $(CMSIS_DRIVERS_ASMSRCS) $(CUSTOMER_ASMSRCS))
ALL_CXXSRCS = $(sort $(BOARD_CXXSRCS) $(DEVICE_CXXSRCS) $(DRIVERS_CXXSRCS) $(EXTERNAL_CXXSRCS) $(LIB_INFERENCE_ENGINE_CXXSRCS) $(LIB_CV_CXXSRCS) $(LIB_AUDIOALGO_CXXSRCS) $(LIB_CXXSRCS) $(MID_CXXSRCS) $(OS_CXXSRCS) $(OS_HAL_CXXSRCS) $(INTEGRATE_CXXSRCS) $(HWACCAUTOTEST_CXXSRCS) $(SCENARIO_APP_CXXSRCS) $(APPL_CXXSRCS) $(TRUSTZONE_SEC_CXXSRCS) $(NSC_CXXSRCS) $(TFM_CXXSRCS) $(INTERFACE_CXXSRCS) $(CMSIS_DRIVERS_CXXSRCS) $(CUSTOMER_CXXSRCS))
ALL_CCSRCS = $(sort $(BOARD_CCSRCS) $(DEVICE_CCSRCS) $(DRIVERS_CCSRCS) $(EXTERNAL_CCSRCS) $(LIB_CCSRCS) $(MID_CCSRCS) $(OS_CCSRCS) $(OS_HAL_CCSRCS) $(INTEGRATE_CCSRCS) $(SCENARIO_APP_CCSRCS) $(APPL_CCSRCS) $(TRUSTZONE_SEC_CCSRCS) $(NSC_CCSRCS) $(TFM_CCSRCS) $(INTERFACE_CCSRCS) $(CMSIS_DRIVERS_CCSRCS) $(CUSTOMER_CCSRCS))
ALL_ALLSRCS = $(sort $(ALL_CSRCS) $(ALL_ASMSRCS) $(ALL_CXXSRCS) $(ALL_CCSRCS))

##
# Collect all object files
##
ALL_COBJS = $(sort $(BOARD_COBJS) $(DEVICE_COBJS) $(DRIVERS_COBJS) $(EXTERNAL_COBJS) $(LIB_INFERENCE_ENGINE_COBJS) $(LIB_CV_COBJS) $(LIB_AUDIOALGO_COBJS) $(LIB_COBJS) $(MID_COBJS) $(OS_COBJS) $(OS_HAL_COBJS) $(INTEGRATE_COBJS) $(HWACCAUTOTEST_COBJS) $(SCENARIO_APP_COBJS) $(APPL_COBJS) $(TRUSTZONE_SEC_COBJS) $(TRUSTZONE_CFG_COBJS) $(NSC_COBJS) $(TFM_COBJS) $(INTERFACE_COBJS) $(CMSIS_DRIVERS_COBJS) $(CUSTOMER_COBJS))
ALL_ASMOBJS = $(sort $(BOARD_ASMOBJS) $(DEVICE_ASMOBJS) $(DRIVERS_ASMOBJS) $(EXTERNAL_ASMOBJS) $(LIB_INFERENCE_ENGINE_ASMOBJS) $(LIB_CV_ASMOBJS) $(LIB_AUDIOALGO_ASMOBJS) $(LIB_ASMOBJS) $(MID_ASMOBJS) $(OS_ASMOBJS) $(OS_HAL_ASMOBJS) $(INTEGRATE_ASMOBJS) $(HWACCAUTOTEST_ASMOBJS) $(SCENARIO_APP_ASMOBJS) $(APPL_ASMOBJS) $(TRUSTZONE_SEC_ASMOBJS) $(TRUSTZONE_CFG_ASMOBJS) $(TRUSTZONE_CFG_CXXOBJS) $(NSC_ASMOBJS) $(TFM_ASMOBJS) $(INTERFACE_ASMOBJS) $(CMSIS_DRIVERS_ASMOBJS) $(CUSTOMER_ASMOBJS))
ALL_CXXOBJS = $(sort $(BOARD_CXXOBJS) $(DEVICE_CXXOBJS) $(DRIVERS_CXXOBJS) $(EXTERNAL_CXXOBJS) $(LIB_INFERENCE_ENGINE_CXXOBJS) $(LIB_CV_CXXOBJS) $(LIB_AUDIOALGO_CXXOBJS) $(LIB_CXXOBJS) $(MID_CXXOBJS) $(OS_CXXOBJS) $(OS_HAL_CXXOBJS) $(INTEGRATE_CXXOBJS) $(HWACCAUTOTEST_CXXOBJS) $(SCENARIO_APP_CXXOBJS) $(APPL_CXXOBJS) $(TRUSTZONE_SEC_CXXOBJS) $(TRUSTZONE_CFG_CCOBJS) $(NSC_CXXOBJS) $(TFM_CXXOBJS) $(INTERFACE_CXXOBJS) $(CMSIS_DRIVERS_CXXOBJS) $(CUSTOMER_CXXOBJS))
ALL_CCOBJS = $(sort $(BOARD_CCOBJS) $(DEVICE_CCOBJS) $(DRIVERS_CCOBJS) $(EXTERNAL_CCOBJS) $(LIB_CCOBJS) $(MID_CCOBJS) $(OS_CCOBJS) $(OS_HAL_CCOBJS) $(INTEGRATE_CCOBJS) $(SCENARIO_APP_CCOBJS) $(APPL_CCOBJS) $(TRUSTZONE_SEC_CCOBJS) $(NSC_CCOBJS) $(TFM_CCOBJS) $(INTERFACE_CCOBJS) $(CMSIS_DRIVERS_CCOBJS) $(CUSTOMER_CCOBJS))
ALL_ALLOBJS = $(sort $(ALL_COBJS) $(ALL_ASMOBJS) $(ALL_CXXOBJS) $(ALL_CCOBJS))

HMX_BSP_LIBS = $(TRUSTZONE_CFG_LIB_ARM) $(DRIVERS_LIB) $(LIB_LIBS) $(EXTERNAL_LIB) $(MID_LIBS) $(CMSIS_DRIVERS_LIB) $(CUSTOMER_LIB)
##############################################################################