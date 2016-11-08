INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_FPGA fpga)

FIND_PATH(
    UHD_FPGA_DIR
    NAMES /usrp3_rfnoc/top/Makefile.common
    HINTS $ENV{PYBOMBS_PREFIX}/src/uhd-fpga
        ${PC_FPGA_INCLUDEDIR}
        ~/src/uhd/fpga-src
    PATHS ${CMAKE_INSTALL_PREFIX}/src/uhd-fpga/usrp3_rfnoc
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(FPGA DEFAULT_MSG UHD_FPGA_DIR)
MARK_AS_ADVANCED(UHD_FPGA_DIR)
