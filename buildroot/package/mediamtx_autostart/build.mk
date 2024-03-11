################################################################################
#
# mediamtx-autostart
#
################################################################################

MEDIAMTX_AUTOSTART_INSTALL_TARGET = YES

define MEDIAMTX_AUTOSTART_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 644 $(MEDIAMTX_AUTOSTART_PKGDIR)/src/mediamtx.service $(TARGET_DIR)/usr/lib/systemd/system/mediamtx.service
endef

$(eval $(generic-package))
