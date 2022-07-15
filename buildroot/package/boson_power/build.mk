################################################################################
#
# BOSON_POWER
#
################################################################################

BOSON_POWER_INSTALL_TARGET = YES

define BOSON_POWER_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 644 $(BOSON_POWER_PKGDIR)/src/boson-power.service $(TARGET_DIR)/usr/lib/systemd/system/boson-power.service
	$(INSTALL) -D -m 744 $(BOSON_POWER_PKGDIR)/src/rtsp_start.sh $(TARGET_DIR)/etc/networkd-dispatcher/configured.d/rtsp_start.sh
	$(INSTALL) -D -m 744 $(BOSON_POWER_PKGDIR)/src/rtsp_stop.sh $(TARGET_DIR)/etc/networkd-dispatcher/no-carrier.d/rtsp_stop.sh
endef

$(eval $(generic-package))
