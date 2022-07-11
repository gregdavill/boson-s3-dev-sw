################################################################################
#
# cedar-mainline
#
################################################################################

CEDAR_VERSION = cb9ea3d9894fd88a5b7f67fea220ceaa5ed17656
CEDAR_SITE = $(call github,gregdavill,sunxi-cedar-mainline,$(CEDAR_VERSION))
CEDAR_LICENSE = GPL-2.0
CEDAR_LICENSE_FILES = LICENSE

$(eval $(kernel-module))
$(eval $(generic-package))