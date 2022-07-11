################################################################################
#
# cedar-mainline
#
################################################################################

CEDAR_VERSION = 399bf69512f9c0ee7d29bb2f8bee720df1636904
CEDAR_SITE = $(call github,uboborov,sunxi-cedar-mainline,$(CEDAR_VERSION))
CEDAR_LICENSE = GPL-2.0
CEDAR_LICENSE_FILES = LICENSE

$(eval $(kernel-module))
$(eval $(generic-package))