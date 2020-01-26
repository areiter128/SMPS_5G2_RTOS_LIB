#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-__P33SMPS_CK__.mk)" "nbproject/Makefile-local-__P33SMPS_CK__.mk"
include nbproject/Makefile-local-__P33SMPS_CK__.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=__P33SMPS_CK__
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=a
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/p33SMPS_rtos_5g2.X.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=a
DEBUGGABLE_SUFFIX=a
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/p33SMPS_rtos_5g2.X.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=rtos5/fdrv_FaultHandler.c rtos5/fdrv_FaultObjects.c rtos5/fdrv_TrapHandler.c rtos5/os_Initialize.c rtos5/os_Scheduler.c rtos5/os_TaskManager.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/rtos5/fdrv_FaultHandler.o ${OBJECTDIR}/rtos5/fdrv_FaultObjects.o ${OBJECTDIR}/rtos5/fdrv_TrapHandler.o ${OBJECTDIR}/rtos5/os_Initialize.o ${OBJECTDIR}/rtos5/os_Scheduler.o ${OBJECTDIR}/rtos5/os_TaskManager.o
POSSIBLE_DEPFILES=${OBJECTDIR}/rtos5/fdrv_FaultHandler.o.d ${OBJECTDIR}/rtos5/fdrv_FaultObjects.o.d ${OBJECTDIR}/rtos5/fdrv_TrapHandler.o.d ${OBJECTDIR}/rtos5/os_Initialize.o.d ${OBJECTDIR}/rtos5/os_Scheduler.o.d ${OBJECTDIR}/rtos5/os_TaskManager.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/rtos5/fdrv_FaultHandler.o ${OBJECTDIR}/rtos5/fdrv_FaultObjects.o ${OBJECTDIR}/rtos5/fdrv_TrapHandler.o ${OBJECTDIR}/rtos5/os_Initialize.o ${OBJECTDIR}/rtos5/os_Scheduler.o ${OBJECTDIR}/rtos5/os_TaskManager.o

# Source Files
SOURCEFILES=rtos5/fdrv_FaultHandler.c rtos5/fdrv_FaultObjects.c rtos5/fdrv_TrapHandler.c rtos5/os_Initialize.c rtos5/os_Scheduler.c rtos5/os_TaskManager.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-__P33SMPS_CK__.mk dist/${CND_CONF}/${IMAGE_TYPE}/p33SMPS_rtos_5g2.X.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33CK256MP508
MP_LINKER_FILE_OPTION=,--script=p33CK256MP508.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/rtos5/fdrv_FaultHandler.o: rtos5/fdrv_FaultHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/rtos5" 
	@${RM} ${OBJECTDIR}/rtos5/fdrv_FaultHandler.o.d 
	@${RM} ${OBJECTDIR}/rtos5/fdrv_FaultHandler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  rtos5/fdrv_FaultHandler.c  -o ${OBJECTDIR}/rtos5/fdrv_FaultHandler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/rtos5/fdrv_FaultHandler.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -D__MA330048_R30__ -D__CODE_OPT_LEVEL_3__ -DXPRJ___P33SMPS_CK__=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O3 -I"rtos5/" -I"../../project/config/" -I"../../plib/p33SMPS_mcal.X/" -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/rtos5/fdrv_FaultHandler.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/rtos5/fdrv_FaultObjects.o: rtos5/fdrv_FaultObjects.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/rtos5" 
	@${RM} ${OBJECTDIR}/rtos5/fdrv_FaultObjects.o.d 
	@${RM} ${OBJECTDIR}/rtos5/fdrv_FaultObjects.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  rtos5/fdrv_FaultObjects.c  -o ${OBJECTDIR}/rtos5/fdrv_FaultObjects.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/rtos5/fdrv_FaultObjects.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -D__MA330048_R30__ -D__CODE_OPT_LEVEL_3__ -DXPRJ___P33SMPS_CK__=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O3 -I"rtos5/" -I"../../project/config/" -I"../../plib/p33SMPS_mcal.X/" -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/rtos5/fdrv_FaultObjects.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/rtos5/fdrv_TrapHandler.o: rtos5/fdrv_TrapHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/rtos5" 
	@${RM} ${OBJECTDIR}/rtos5/fdrv_TrapHandler.o.d 
	@${RM} ${OBJECTDIR}/rtos5/fdrv_TrapHandler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  rtos5/fdrv_TrapHandler.c  -o ${OBJECTDIR}/rtos5/fdrv_TrapHandler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/rtos5/fdrv_TrapHandler.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -D__MA330048_R30__ -D__CODE_OPT_LEVEL_3__ -DXPRJ___P33SMPS_CK__=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O3 -I"rtos5/" -I"../../project/config/" -I"../../plib/p33SMPS_mcal.X/" -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/rtos5/fdrv_TrapHandler.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/rtos5/os_Initialize.o: rtos5/os_Initialize.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/rtos5" 
	@${RM} ${OBJECTDIR}/rtos5/os_Initialize.o.d 
	@${RM} ${OBJECTDIR}/rtos5/os_Initialize.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  rtos5/os_Initialize.c  -o ${OBJECTDIR}/rtos5/os_Initialize.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/rtos5/os_Initialize.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -D__MA330048_R30__ -D__CODE_OPT_LEVEL_3__ -DXPRJ___P33SMPS_CK__=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O3 -I"rtos5/" -I"../../project/config/" -I"../../plib/p33SMPS_mcal.X/" -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/rtos5/os_Initialize.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/rtos5/os_Scheduler.o: rtos5/os_Scheduler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/rtos5" 
	@${RM} ${OBJECTDIR}/rtos5/os_Scheduler.o.d 
	@${RM} ${OBJECTDIR}/rtos5/os_Scheduler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  rtos5/os_Scheduler.c  -o ${OBJECTDIR}/rtos5/os_Scheduler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/rtos5/os_Scheduler.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -D__MA330048_R30__ -D__CODE_OPT_LEVEL_3__ -DXPRJ___P33SMPS_CK__=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O3 -I"rtos5/" -I"../../project/config/" -I"../../plib/p33SMPS_mcal.X/" -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/rtos5/os_Scheduler.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/rtos5/os_TaskManager.o: rtos5/os_TaskManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/rtos5" 
	@${RM} ${OBJECTDIR}/rtos5/os_TaskManager.o.d 
	@${RM} ${OBJECTDIR}/rtos5/os_TaskManager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  rtos5/os_TaskManager.c  -o ${OBJECTDIR}/rtos5/os_TaskManager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/rtos5/os_TaskManager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1  -mno-eds-warn  -omf=elf -D__MA330048_R30__ -D__CODE_OPT_LEVEL_3__ -DXPRJ___P33SMPS_CK__=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O3 -I"rtos5/" -I"../../project/config/" -I"../../plib/p33SMPS_mcal.X/" -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/rtos5/os_TaskManager.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/rtos5/fdrv_FaultHandler.o: rtos5/fdrv_FaultHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/rtos5" 
	@${RM} ${OBJECTDIR}/rtos5/fdrv_FaultHandler.o.d 
	@${RM} ${OBJECTDIR}/rtos5/fdrv_FaultHandler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  rtos5/fdrv_FaultHandler.c  -o ${OBJECTDIR}/rtos5/fdrv_FaultHandler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/rtos5/fdrv_FaultHandler.o.d"      -mno-eds-warn  -g -omf=elf -D__MA330048_R30__ -D__CODE_OPT_LEVEL_3__ -DXPRJ___P33SMPS_CK__=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O3 -I"rtos5/" -I"../../project/config/" -I"../../plib/p33SMPS_mcal.X/" -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/rtos5/fdrv_FaultHandler.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/rtos5/fdrv_FaultObjects.o: rtos5/fdrv_FaultObjects.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/rtos5" 
	@${RM} ${OBJECTDIR}/rtos5/fdrv_FaultObjects.o.d 
	@${RM} ${OBJECTDIR}/rtos5/fdrv_FaultObjects.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  rtos5/fdrv_FaultObjects.c  -o ${OBJECTDIR}/rtos5/fdrv_FaultObjects.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/rtos5/fdrv_FaultObjects.o.d"      -mno-eds-warn  -g -omf=elf -D__MA330048_R30__ -D__CODE_OPT_LEVEL_3__ -DXPRJ___P33SMPS_CK__=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O3 -I"rtos5/" -I"../../project/config/" -I"../../plib/p33SMPS_mcal.X/" -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/rtos5/fdrv_FaultObjects.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/rtos5/fdrv_TrapHandler.o: rtos5/fdrv_TrapHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/rtos5" 
	@${RM} ${OBJECTDIR}/rtos5/fdrv_TrapHandler.o.d 
	@${RM} ${OBJECTDIR}/rtos5/fdrv_TrapHandler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  rtos5/fdrv_TrapHandler.c  -o ${OBJECTDIR}/rtos5/fdrv_TrapHandler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/rtos5/fdrv_TrapHandler.o.d"      -mno-eds-warn  -g -omf=elf -D__MA330048_R30__ -D__CODE_OPT_LEVEL_3__ -DXPRJ___P33SMPS_CK__=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O3 -I"rtos5/" -I"../../project/config/" -I"../../plib/p33SMPS_mcal.X/" -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/rtos5/fdrv_TrapHandler.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/rtos5/os_Initialize.o: rtos5/os_Initialize.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/rtos5" 
	@${RM} ${OBJECTDIR}/rtos5/os_Initialize.o.d 
	@${RM} ${OBJECTDIR}/rtos5/os_Initialize.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  rtos5/os_Initialize.c  -o ${OBJECTDIR}/rtos5/os_Initialize.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/rtos5/os_Initialize.o.d"      -mno-eds-warn  -g -omf=elf -D__MA330048_R30__ -D__CODE_OPT_LEVEL_3__ -DXPRJ___P33SMPS_CK__=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O3 -I"rtos5/" -I"../../project/config/" -I"../../plib/p33SMPS_mcal.X/" -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/rtos5/os_Initialize.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/rtos5/os_Scheduler.o: rtos5/os_Scheduler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/rtos5" 
	@${RM} ${OBJECTDIR}/rtos5/os_Scheduler.o.d 
	@${RM} ${OBJECTDIR}/rtos5/os_Scheduler.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  rtos5/os_Scheduler.c  -o ${OBJECTDIR}/rtos5/os_Scheduler.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/rtos5/os_Scheduler.o.d"      -mno-eds-warn  -g -omf=elf -D__MA330048_R30__ -D__CODE_OPT_LEVEL_3__ -DXPRJ___P33SMPS_CK__=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O3 -I"rtos5/" -I"../../project/config/" -I"../../plib/p33SMPS_mcal.X/" -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/rtos5/os_Scheduler.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/rtos5/os_TaskManager.o: rtos5/os_TaskManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/rtos5" 
	@${RM} ${OBJECTDIR}/rtos5/os_TaskManager.o.d 
	@${RM} ${OBJECTDIR}/rtos5/os_TaskManager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  rtos5/os_TaskManager.c  -o ${OBJECTDIR}/rtos5/os_TaskManager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/rtos5/os_TaskManager.o.d"      -mno-eds-warn  -g -omf=elf -D__MA330048_R30__ -D__CODE_OPT_LEVEL_3__ -DXPRJ___P33SMPS_CK__=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O3 -I"rtos5/" -I"../../project/config/" -I"../../plib/p33SMPS_mcal.X/" -msmart-io=1 -Wall -msfr-warn=off    -mdfp=${DFP_DIR}/xc16
	@${FIXDEPS} "${OBJECTDIR}/rtos5/os_TaskManager.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: archive
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/p33SMPS_rtos_5g2.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/p33SMPS_rtos_5g2.X.${OUTPUT_SUFFIX} 
	${MP_AR} $(MP_EXTRA_AR_PRE)  -omf=elf -r dist/${CND_CONF}/${IMAGE_TYPE}/p33SMPS_rtos_5g2.X.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/p33SMPS_rtos_5g2.X.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/p33SMPS_rtos_5g2.X.${OUTPUT_SUFFIX} 
	${MP_AR} $(MP_EXTRA_AR_PRE)  -omf=elf -r dist/${CND_CONF}/${IMAGE_TYPE}/p33SMPS_rtos_5g2.X.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/__P33SMPS_CK__
	${RM} -r dist/__P33SMPS_CK__

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
