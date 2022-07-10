################################################################################
#
# simple_rtsp_server
#
################################################################################

RTSP_SERVER_VERSION = 67e8a01d5616cb5a5bb8131efef895bd75ffb1d6
RTSP_SERVER_SITE = $(call github,aler9,rtsp-simple-server,$(RTSP_SERVER_VERSION))
RTSP_SERVER_LICENSE = MIT
RTSP_SERVER_LICENSE_FILES = LICENSE
RTSP_SERVER_INSTALL_TARGET = YES
RTSP_SERVER_INSTALL_STAGING = YES

$(eval $(golang-package))
