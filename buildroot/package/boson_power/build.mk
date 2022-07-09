################################################################################
#
# BOSON_POWER
#
################################################################################

BOSON_POWER_INSTALL_TARGET = YES

define BOSON_POWER_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 644 $(BOSON_POWER_PKGDIR)/src/boson-power.service $(TARGET_DIR)/usr/lib/systemd/system/boson-power.service
endef

$(eval $(generic-package))
