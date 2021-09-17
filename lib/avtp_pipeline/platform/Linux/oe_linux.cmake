option ( AVB_FEATURE_GSTREAMER "Gstreamer" OFF)
option ( AVB_FEATURE_PCAP "PCAP" ON)
option ( AVB_FEATURE_IGB "IGB" OFF)
option ( AVB_FEATURE_FQTSS "FQTSS" OFF)
option ( AVB_FEATURE_ENDPOINT "ENDPOINT" ON)

# and another kernel sources
set ( LINUX_KERNEL_DIR "${OECORE_TARGET_SYSROOT}/usr/src/kernel" )

# build configuration
set ( OPENAVB_HAL      "generic" )
set ( OPENAVB_OSAL     "Linux" )
set ( OPENAVB_TCAL     "GNU" )
set ( OPENAVB_PLATFORM "${OPENAVB_HAL}-${OPENAVB_OSAL}" )

# Platform Additions
set ( PLATFORM_INCLUDE_DIRECTORIES
	${CMAKE_SOURCE_DIR}/platform/arm_imx6x/include
	${CMAKE_SOURCE_DIR}/openavb_common
	${CMAKE_SOURCE_DIR}/../../daemons/common
	${CMAKE_SOURCE_DIR}/../../daemons/mrpd
	${CMAKE_SOURCE_DIR}/../../daemons/maap/common
)

include(${OECORE_NATIVE_SYSROOT}/usr/share/cmake/OEToolchainConfig.cmake)

