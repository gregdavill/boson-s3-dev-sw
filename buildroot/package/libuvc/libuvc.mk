################################################################################
#
# libuvc
#
################################################################################

LIBUVC_VERSION = a4de53e7e265f8c6a64df7ccd289f318104e1916
LIBUVC_SITE = $(call github,libuvc,libuvc,$(LIBUVC_VERSION))
LIBUVC_LICENSE = BSD
LIBUVC_LICENSE_FILES = LICENSE.txt
LIBUVC_DEPENDENCIES = libusb
LIBUVC_INSTALL_TARGET = YES
LIBUVC_INSTALL_STAGING = YES

$(eval $(cmake-package))
