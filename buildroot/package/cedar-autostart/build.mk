################################################################################
#
# cedar-autostart
#
################################################################################

CEDAR_AUTOSTART_INSTALL_TARGET = YES

define CEDAR_AUTOSTART_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 644 $(CEDAR_AUTOSTART_PKGDIR)/src/cedar.service $(TARGET_DIR)/usr/lib/systemd/system/cedar.service
endef

$(eval $(generic-package))
