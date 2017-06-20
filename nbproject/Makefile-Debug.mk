#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/lib/algTranslator/src/common/basAlgTranslator.o \
	${OBJECTDIR}/lib/algTranslator/src/common/basAlgTranslator_Line.o \
	${OBJECTDIR}/lib/algTranslator/src/common/basAlgTranslator_Thermo.o \
	${OBJECTDIR}/lib/algTranslator/src/common/basTweak.o \
	${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_ForCir.o \
	${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_ForLine.o \
	${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_LineDirect.o \
	${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_Switcher.o \
	${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_Thermo.o \
	${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_ThermoB.o \
	${OBJECTDIR}/lib/libSwarmComm/src/common/basTransport_Serial.o \
	${OBJECTDIR}/lib/libSwarmComm/src/common/basTransport_UDP.o \
	${OBJECTDIR}/lib/libSwarmComm/src/common/clsTransport_WAMV.o \
	${OBJECTDIR}/lib/libSwarmComm/src/targets/linux/clsSerial_UDP.o \
	${OBJECTDIR}/lib/libSwarmCore/source/common/basControl.o \
	${OBJECTDIR}/lib/libSwarmCore/source/common/basControl_obj.o \
	${OBJECTDIR}/lib/libSwarmCore/source/common/basControl_obj_cmdBasic.o \
	${OBJECTDIR}/lib/libSwarmCore/source/common/basExtFault.o \
	${OBJECTDIR}/lib/libSwarmCore/source/common/basLocality.o \
	${OBJECTDIR}/lib/libSwarmCore/source/common/basPilot.o \
	${OBJECTDIR}/lib/libSwarmCore/source/common/basPilot_cmdBasic.o \
	${OBJECTDIR}/lib/libSwarmCore/source/common/basPower.o \
	${OBJECTDIR}/lib/libSwarmCore/source/common/basRadio.o \
	${OBJECTDIR}/lib/libSwarmCore/source/common/basRadio_Swarm.o \
	${OBJECTDIR}/lib/libSwarmCore/source/common/clsControl_simple.o \
	${OBJECTDIR}/lib/libSwarmCore/source/targets/WAMV/clsRadio_WAMV.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/basJson.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/basJsonServer.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/basSwarm.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/basSwarmJson.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonBridgeInfo.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonCoreSetup.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonDataSet.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonDialog.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonEventGraphCollection.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonGraph.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonIPC.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonLeader.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonLeaderControl.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonObjectRequest.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonObjectResult.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonRPCMethod.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonRPCResult.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonSelection.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonSelectionSet.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonServer.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonSetSwarmAlg.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonSpecialDef.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonSwarmConstants_dataDiver.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonTweakSet.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonVehicle.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsSwarm_WAMV.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsSwarm_WAMV_LocalBridge.o \
	${OBJECTDIR}/lib/libSwarmNet/source/common/clsSwarm_WAMV_RemoteBridge.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/basRadioNode.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/basSwarmSim.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/basSysSim.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/basVModel.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/basVehicle.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/basVehicle_Pool.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/clsExtFault_sysSim.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/clsPilot_sysSim.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/clsPower_sysSim.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/clsRadioChannel.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/clsSerial_RadioNode.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/clsSwarm_WAMV_Sim.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/clsSysSim_Simple.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/clsVModel_Ideal.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/clsVModel_SimpleStick.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/clsVehicle_WAMV.o \
	${OBJECTDIR}/lib/libSwarmSim/source/common/clslLocality_sysSim.o \
	${OBJECTDIR}/lib/swarmEngine/src/common/basSwarmAlg.o \
	${OBJECTDIR}/lib/swarmEngine/src/common/basSwarmAlg_Line.o \
	${OBJECTDIR}/lib/swarmEngine/src/common/basSwarmAlg_Thermo.o \
	${OBJECTDIR}/lib/swarmEngine/src/common/clsNeighborList.o \
	${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_ForCir.o \
	${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_ForLine.o \
	${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_Line.o \
	${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_Switcher.o \
	${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_Thermo.o \
	${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_ThermoB.o \
	${OBJECTDIR}/lib/vehicleSupport/source/common/crc.o \
	${OBJECTDIR}/lib/vehicleSupport/source/common/geoCalc.o \
	${OBJECTDIR}/lib/vehicleSupport/source/common/math-utils.o \
	${OBJECTDIR}/lib/vehicleSupport/source/targets/linux/clsGeoConverter.o \
	${OBJECTDIR}/lib/vehicleSupport/source/targets/linux/seinterconnect.o \
	${OBJECTDIR}/main.o \
	${OBJECTDIR}/module/sleep.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-lcurl -lproj -ljsoncpp

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/bridgewamv

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/bridgewamv: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/bridgewamv ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/lib/algTranslator/src/common/basAlgTranslator.o: lib/algTranslator/src/common/basAlgTranslator.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/algTranslator/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/algTranslator/src/common/basAlgTranslator.o lib/algTranslator/src/common/basAlgTranslator.cpp

${OBJECTDIR}/lib/algTranslator/src/common/basAlgTranslator_Line.o: lib/algTranslator/src/common/basAlgTranslator_Line.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/algTranslator/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/algTranslator/src/common/basAlgTranslator_Line.o lib/algTranslator/src/common/basAlgTranslator_Line.cpp

${OBJECTDIR}/lib/algTranslator/src/common/basAlgTranslator_Thermo.o: lib/algTranslator/src/common/basAlgTranslator_Thermo.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/algTranslator/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/algTranslator/src/common/basAlgTranslator_Thermo.o lib/algTranslator/src/common/basAlgTranslator_Thermo.cpp

${OBJECTDIR}/lib/algTranslator/src/common/basTweak.o: lib/algTranslator/src/common/basTweak.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/algTranslator/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/algTranslator/src/common/basTweak.o lib/algTranslator/src/common/basTweak.cpp

${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_ForCir.o: lib/algTranslator/src/common/clsAlgTranslator_ForCir.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/algTranslator/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_ForCir.o lib/algTranslator/src/common/clsAlgTranslator_ForCir.cpp

${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_ForLine.o: lib/algTranslator/src/common/clsAlgTranslator_ForLine.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/algTranslator/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_ForLine.o lib/algTranslator/src/common/clsAlgTranslator_ForLine.cpp

${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_LineDirect.o: lib/algTranslator/src/common/clsAlgTranslator_LineDirect.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/algTranslator/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_LineDirect.o lib/algTranslator/src/common/clsAlgTranslator_LineDirect.cpp

${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_Switcher.o: lib/algTranslator/src/common/clsAlgTranslator_Switcher.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/algTranslator/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_Switcher.o lib/algTranslator/src/common/clsAlgTranslator_Switcher.cpp

${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_Thermo.o: lib/algTranslator/src/common/clsAlgTranslator_Thermo.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/algTranslator/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_Thermo.o lib/algTranslator/src/common/clsAlgTranslator_Thermo.cpp

${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_ThermoB.o: lib/algTranslator/src/common/clsAlgTranslator_ThermoB.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/algTranslator/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/algTranslator/src/common/clsAlgTranslator_ThermoB.o lib/algTranslator/src/common/clsAlgTranslator_ThermoB.cpp

${OBJECTDIR}/lib/libSwarmComm/src/common/basTransport_Serial.o: lib/libSwarmComm/src/common/basTransport_Serial.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmComm/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmComm/src/common/basTransport_Serial.o lib/libSwarmComm/src/common/basTransport_Serial.cpp

${OBJECTDIR}/lib/libSwarmComm/src/common/basTransport_UDP.o: lib/libSwarmComm/src/common/basTransport_UDP.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmComm/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmComm/src/common/basTransport_UDP.o lib/libSwarmComm/src/common/basTransport_UDP.cpp

${OBJECTDIR}/lib/libSwarmComm/src/common/clsTransport_WAMV.o: lib/libSwarmComm/src/common/clsTransport_WAMV.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmComm/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmComm/src/common/clsTransport_WAMV.o lib/libSwarmComm/src/common/clsTransport_WAMV.cpp

${OBJECTDIR}/lib/libSwarmComm/src/targets/linux/clsSerial_UDP.o: lib/libSwarmComm/src/targets/linux/clsSerial_UDP.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmComm/src/targets/linux
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmComm/src/targets/linux/clsSerial_UDP.o lib/libSwarmComm/src/targets/linux/clsSerial_UDP.cpp

${OBJECTDIR}/lib/libSwarmCore/source/common/basControl.o: lib/libSwarmCore/source/common/basControl.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmCore/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmCore/source/common/basControl.o lib/libSwarmCore/source/common/basControl.cpp

${OBJECTDIR}/lib/libSwarmCore/source/common/basControl_obj.o: lib/libSwarmCore/source/common/basControl_obj.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmCore/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmCore/source/common/basControl_obj.o lib/libSwarmCore/source/common/basControl_obj.cpp

${OBJECTDIR}/lib/libSwarmCore/source/common/basControl_obj_cmdBasic.o: lib/libSwarmCore/source/common/basControl_obj_cmdBasic.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmCore/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmCore/source/common/basControl_obj_cmdBasic.o lib/libSwarmCore/source/common/basControl_obj_cmdBasic.cpp

${OBJECTDIR}/lib/libSwarmCore/source/common/basExtFault.o: lib/libSwarmCore/source/common/basExtFault.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmCore/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmCore/source/common/basExtFault.o lib/libSwarmCore/source/common/basExtFault.cpp

${OBJECTDIR}/lib/libSwarmCore/source/common/basLocality.o: lib/libSwarmCore/source/common/basLocality.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmCore/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmCore/source/common/basLocality.o lib/libSwarmCore/source/common/basLocality.cpp

${OBJECTDIR}/lib/libSwarmCore/source/common/basPilot.o: lib/libSwarmCore/source/common/basPilot.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmCore/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmCore/source/common/basPilot.o lib/libSwarmCore/source/common/basPilot.cpp

${OBJECTDIR}/lib/libSwarmCore/source/common/basPilot_cmdBasic.o: lib/libSwarmCore/source/common/basPilot_cmdBasic.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmCore/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmCore/source/common/basPilot_cmdBasic.o lib/libSwarmCore/source/common/basPilot_cmdBasic.cpp

${OBJECTDIR}/lib/libSwarmCore/source/common/basPower.o: lib/libSwarmCore/source/common/basPower.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmCore/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmCore/source/common/basPower.o lib/libSwarmCore/source/common/basPower.cpp

${OBJECTDIR}/lib/libSwarmCore/source/common/basRadio.o: lib/libSwarmCore/source/common/basRadio.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmCore/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmCore/source/common/basRadio.o lib/libSwarmCore/source/common/basRadio.cpp

${OBJECTDIR}/lib/libSwarmCore/source/common/basRadio_Swarm.o: lib/libSwarmCore/source/common/basRadio_Swarm.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmCore/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmCore/source/common/basRadio_Swarm.o lib/libSwarmCore/source/common/basRadio_Swarm.cpp

${OBJECTDIR}/lib/libSwarmCore/source/common/clsControl_simple.o: lib/libSwarmCore/source/common/clsControl_simple.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmCore/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmCore/source/common/clsControl_simple.o lib/libSwarmCore/source/common/clsControl_simple.cpp

${OBJECTDIR}/lib/libSwarmCore/source/targets/WAMV/clsRadio_WAMV.o: lib/libSwarmCore/source/targets/WAMV/clsRadio_WAMV.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmCore/source/targets/WAMV
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmCore/source/targets/WAMV/clsRadio_WAMV.o lib/libSwarmCore/source/targets/WAMV/clsRadio_WAMV.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/basJson.o: lib/libSwarmNet/source/common/basJson.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/basJson.o lib/libSwarmNet/source/common/basJson.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/basJsonServer.o: lib/libSwarmNet/source/common/basJsonServer.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/basJsonServer.o lib/libSwarmNet/source/common/basJsonServer.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/basSwarm.o: lib/libSwarmNet/source/common/basSwarm.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/basSwarm.o lib/libSwarmNet/source/common/basSwarm.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/basSwarmJson.o: lib/libSwarmNet/source/common/basSwarmJson.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/basSwarmJson.o lib/libSwarmNet/source/common/basSwarmJson.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonBridgeInfo.o: lib/libSwarmNet/source/common/clsJsonBridgeInfo.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonBridgeInfo.o lib/libSwarmNet/source/common/clsJsonBridgeInfo.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonCoreSetup.o: lib/libSwarmNet/source/common/clsJsonCoreSetup.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonCoreSetup.o lib/libSwarmNet/source/common/clsJsonCoreSetup.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonDataSet.o: lib/libSwarmNet/source/common/clsJsonDataSet.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonDataSet.o lib/libSwarmNet/source/common/clsJsonDataSet.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonDialog.o: lib/libSwarmNet/source/common/clsJsonDialog.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonDialog.o lib/libSwarmNet/source/common/clsJsonDialog.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonEventGraphCollection.o: lib/libSwarmNet/source/common/clsJsonEventGraphCollection.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonEventGraphCollection.o lib/libSwarmNet/source/common/clsJsonEventGraphCollection.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonGraph.o: lib/libSwarmNet/source/common/clsJsonGraph.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonGraph.o lib/libSwarmNet/source/common/clsJsonGraph.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonIPC.o: lib/libSwarmNet/source/common/clsJsonIPC.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonIPC.o lib/libSwarmNet/source/common/clsJsonIPC.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonLeader.o: lib/libSwarmNet/source/common/clsJsonLeader.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonLeader.o lib/libSwarmNet/source/common/clsJsonLeader.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonLeaderControl.o: lib/libSwarmNet/source/common/clsJsonLeaderControl.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonLeaderControl.o lib/libSwarmNet/source/common/clsJsonLeaderControl.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonObjectRequest.o: lib/libSwarmNet/source/common/clsJsonObjectRequest.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonObjectRequest.o lib/libSwarmNet/source/common/clsJsonObjectRequest.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonObjectResult.o: lib/libSwarmNet/source/common/clsJsonObjectResult.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonObjectResult.o lib/libSwarmNet/source/common/clsJsonObjectResult.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonRPCMethod.o: lib/libSwarmNet/source/common/clsJsonRPCMethod.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonRPCMethod.o lib/libSwarmNet/source/common/clsJsonRPCMethod.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonRPCResult.o: lib/libSwarmNet/source/common/clsJsonRPCResult.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonRPCResult.o lib/libSwarmNet/source/common/clsJsonRPCResult.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonSelection.o: lib/libSwarmNet/source/common/clsJsonSelection.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonSelection.o lib/libSwarmNet/source/common/clsJsonSelection.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonSelectionSet.o: lib/libSwarmNet/source/common/clsJsonSelectionSet.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonSelectionSet.o lib/libSwarmNet/source/common/clsJsonSelectionSet.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonServer.o: lib/libSwarmNet/source/common/clsJsonServer.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonServer.o lib/libSwarmNet/source/common/clsJsonServer.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonSetSwarmAlg.o: lib/libSwarmNet/source/common/clsJsonSetSwarmAlg.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonSetSwarmAlg.o lib/libSwarmNet/source/common/clsJsonSetSwarmAlg.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonSpecialDef.o: lib/libSwarmNet/source/common/clsJsonSpecialDef.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonSpecialDef.o lib/libSwarmNet/source/common/clsJsonSpecialDef.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonSwarmConstants_dataDiver.o: lib/libSwarmNet/source/common/clsJsonSwarmConstants_dataDiver.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonSwarmConstants_dataDiver.o lib/libSwarmNet/source/common/clsJsonSwarmConstants_dataDiver.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonTweakSet.o: lib/libSwarmNet/source/common/clsJsonTweakSet.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonTweakSet.o lib/libSwarmNet/source/common/clsJsonTweakSet.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonVehicle.o: lib/libSwarmNet/source/common/clsJsonVehicle.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsJsonVehicle.o lib/libSwarmNet/source/common/clsJsonVehicle.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsSwarm_WAMV.o: lib/libSwarmNet/source/common/clsSwarm_WAMV.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsSwarm_WAMV.o lib/libSwarmNet/source/common/clsSwarm_WAMV.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsSwarm_WAMV_LocalBridge.o: lib/libSwarmNet/source/common/clsSwarm_WAMV_LocalBridge.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsSwarm_WAMV_LocalBridge.o lib/libSwarmNet/source/common/clsSwarm_WAMV_LocalBridge.cpp

${OBJECTDIR}/lib/libSwarmNet/source/common/clsSwarm_WAMV_RemoteBridge.o: lib/libSwarmNet/source/common/clsSwarm_WAMV_RemoteBridge.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmNet/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmNet/source/common/clsSwarm_WAMV_RemoteBridge.o lib/libSwarmNet/source/common/clsSwarm_WAMV_RemoteBridge.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/basRadioNode.o: lib/libSwarmSim/source/common/basRadioNode.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/basRadioNode.o lib/libSwarmSim/source/common/basRadioNode.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/basSwarmSim.o: lib/libSwarmSim/source/common/basSwarmSim.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/basSwarmSim.o lib/libSwarmSim/source/common/basSwarmSim.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/basSysSim.o: lib/libSwarmSim/source/common/basSysSim.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/basSysSim.o lib/libSwarmSim/source/common/basSysSim.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/basVModel.o: lib/libSwarmSim/source/common/basVModel.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/basVModel.o lib/libSwarmSim/source/common/basVModel.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/basVehicle.o: lib/libSwarmSim/source/common/basVehicle.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/basVehicle.o lib/libSwarmSim/source/common/basVehicle.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/basVehicle_Pool.o: lib/libSwarmSim/source/common/basVehicle_Pool.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/basVehicle_Pool.o lib/libSwarmSim/source/common/basVehicle_Pool.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/clsExtFault_sysSim.o: lib/libSwarmSim/source/common/clsExtFault_sysSim.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/clsExtFault_sysSim.o lib/libSwarmSim/source/common/clsExtFault_sysSim.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/clsPilot_sysSim.o: lib/libSwarmSim/source/common/clsPilot_sysSim.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/clsPilot_sysSim.o lib/libSwarmSim/source/common/clsPilot_sysSim.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/clsPower_sysSim.o: lib/libSwarmSim/source/common/clsPower_sysSim.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/clsPower_sysSim.o lib/libSwarmSim/source/common/clsPower_sysSim.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/clsRadioChannel.o: lib/libSwarmSim/source/common/clsRadioChannel.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/clsRadioChannel.o lib/libSwarmSim/source/common/clsRadioChannel.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/clsSerial_RadioNode.o: lib/libSwarmSim/source/common/clsSerial_RadioNode.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/clsSerial_RadioNode.o lib/libSwarmSim/source/common/clsSerial_RadioNode.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/clsSwarm_WAMV_Sim.o: lib/libSwarmSim/source/common/clsSwarm_WAMV_Sim.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/clsSwarm_WAMV_Sim.o lib/libSwarmSim/source/common/clsSwarm_WAMV_Sim.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/clsSysSim_Simple.o: lib/libSwarmSim/source/common/clsSysSim_Simple.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/clsSysSim_Simple.o lib/libSwarmSim/source/common/clsSysSim_Simple.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/clsVModel_Ideal.o: lib/libSwarmSim/source/common/clsVModel_Ideal.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/clsVModel_Ideal.o lib/libSwarmSim/source/common/clsVModel_Ideal.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/clsVModel_SimpleStick.o: lib/libSwarmSim/source/common/clsVModel_SimpleStick.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/clsVModel_SimpleStick.o lib/libSwarmSim/source/common/clsVModel_SimpleStick.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/clsVehicle_WAMV.o: lib/libSwarmSim/source/common/clsVehicle_WAMV.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/clsVehicle_WAMV.o lib/libSwarmSim/source/common/clsVehicle_WAMV.cpp

${OBJECTDIR}/lib/libSwarmSim/source/common/clslLocality_sysSim.o: lib/libSwarmSim/source/common/clslLocality_sysSim.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/libSwarmSim/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/libSwarmSim/source/common/clslLocality_sysSim.o lib/libSwarmSim/source/common/clslLocality_sysSim.cpp

${OBJECTDIR}/lib/swarmEngine/src/common/basSwarmAlg.o: lib/swarmEngine/src/common/basSwarmAlg.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/swarmEngine/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/swarmEngine/src/common/basSwarmAlg.o lib/swarmEngine/src/common/basSwarmAlg.cpp

${OBJECTDIR}/lib/swarmEngine/src/common/basSwarmAlg_Line.o: lib/swarmEngine/src/common/basSwarmAlg_Line.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/swarmEngine/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/swarmEngine/src/common/basSwarmAlg_Line.o lib/swarmEngine/src/common/basSwarmAlg_Line.cpp

${OBJECTDIR}/lib/swarmEngine/src/common/basSwarmAlg_Thermo.o: lib/swarmEngine/src/common/basSwarmAlg_Thermo.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/swarmEngine/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/swarmEngine/src/common/basSwarmAlg_Thermo.o lib/swarmEngine/src/common/basSwarmAlg_Thermo.cpp

${OBJECTDIR}/lib/swarmEngine/src/common/clsNeighborList.o: lib/swarmEngine/src/common/clsNeighborList.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/swarmEngine/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/swarmEngine/src/common/clsNeighborList.o lib/swarmEngine/src/common/clsNeighborList.cpp

${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_ForCir.o: lib/swarmEngine/src/common/clsSwarmAlg_ForCir.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/swarmEngine/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_ForCir.o lib/swarmEngine/src/common/clsSwarmAlg_ForCir.cpp

${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_ForLine.o: lib/swarmEngine/src/common/clsSwarmAlg_ForLine.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/swarmEngine/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_ForLine.o lib/swarmEngine/src/common/clsSwarmAlg_ForLine.cpp

${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_Line.o: lib/swarmEngine/src/common/clsSwarmAlg_Line.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/swarmEngine/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_Line.o lib/swarmEngine/src/common/clsSwarmAlg_Line.cpp

${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_Switcher.o: lib/swarmEngine/src/common/clsSwarmAlg_Switcher.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/swarmEngine/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_Switcher.o lib/swarmEngine/src/common/clsSwarmAlg_Switcher.cpp

${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_Thermo.o: lib/swarmEngine/src/common/clsSwarmAlg_Thermo.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/swarmEngine/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_Thermo.o lib/swarmEngine/src/common/clsSwarmAlg_Thermo.cpp

${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_ThermoB.o: lib/swarmEngine/src/common/clsSwarmAlg_ThermoB.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/swarmEngine/src/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/swarmEngine/src/common/clsSwarmAlg_ThermoB.o lib/swarmEngine/src/common/clsSwarmAlg_ThermoB.cpp

${OBJECTDIR}/lib/vehicleSupport/source/common/crc.o: lib/vehicleSupport/source/common/crc.c
	${MKDIR} -p ${OBJECTDIR}/lib/vehicleSupport/source/common
	${RM} "$@.d"
	$(COMPILE.c) -g -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/vehicleSupport/source/common/crc.o lib/vehicleSupport/source/common/crc.c

${OBJECTDIR}/lib/vehicleSupport/source/common/geoCalc.o: lib/vehicleSupport/source/common/geoCalc.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/vehicleSupport/source/common
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/vehicleSupport/source/common/geoCalc.o lib/vehicleSupport/source/common/geoCalc.cpp

${OBJECTDIR}/lib/vehicleSupport/source/common/math-utils.o: lib/vehicleSupport/source/common/math-utils.c
	${MKDIR} -p ${OBJECTDIR}/lib/vehicleSupport/source/common
	${RM} "$@.d"
	$(COMPILE.c) -g -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/vehicleSupport/source/common/math-utils.o lib/vehicleSupport/source/common/math-utils.c

${OBJECTDIR}/lib/vehicleSupport/source/targets/linux/clsGeoConverter.o: lib/vehicleSupport/source/targets/linux/clsGeoConverter.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/vehicleSupport/source/targets/linux
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/vehicleSupport/source/targets/linux/clsGeoConverter.o lib/vehicleSupport/source/targets/linux/clsGeoConverter.cpp

${OBJECTDIR}/lib/vehicleSupport/source/targets/linux/seinterconnect.o: lib/vehicleSupport/source/targets/linux/seinterconnect.cpp
	${MKDIR} -p ${OBJECTDIR}/lib/vehicleSupport/source/targets/linux
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/vehicleSupport/source/targets/linux/seinterconnect.o lib/vehicleSupport/source/targets/linux/seinterconnect.cpp

${OBJECTDIR}/main.o: main.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -Ilib/algTranslator/include/common -Ilib/libSwarmComm/include/common -Ilib/libSwarmNet/include/common -Ilib/libSwarmComm/include/targets/linux -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -Imodule -Ilib/libSwarmSim/include/common -Ilib/libSwarmCore/include/common -Ilib/libSwarmCore/include/targets/WAMV -Ilib/swarmEngine/include/common -Ilib/swarmEngine/include/targets/linux -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

${OBJECTDIR}/module/sleep.o: module/sleep.c
	${MKDIR} -p ${OBJECTDIR}/module
	${RM} "$@.d"
	$(COMPILE.c) -g -Ilib/vehicleSupport/include/common -Ilib/vehicleSupport/include/targets/linux -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/module/sleep.o module/sleep.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
