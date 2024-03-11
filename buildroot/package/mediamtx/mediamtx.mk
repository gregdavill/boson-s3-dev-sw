################################################################################
#
# mediamtx
#
################################################################################

MEDIAMTX_VERSION = v1.6.0
MEDIAMTX_SITE = $(call github,bluenviron,mediamtx,$(MEDIAMTX_VERSION))
MEDIAMTX_LICENSE = MIT
MEDIAMTX_LICENSE_FILES = LICENSE
MEDIAMTX_INSTALL_TARGET = YES
MEDIAMTX_INSTALL_STAGING = YES


define MEDIAMTX_POST_CONFIGURE_FIXUP
	cd $(@D); \
	$(GO_BIN) generate ./...
endef

MEDIAMTX_POST_CONFIGURE_HOOKS += MEDIAMTX_POST_CONFIGURE_FIXUP


$(eval $(golang-package))
