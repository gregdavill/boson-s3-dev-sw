################################################################################
#
# rtsp-server-autostart
#
################################################################################

RTSP_SERVER_AUTOSTART_INSTALL_TARGET = YES

define RTSP_SERVER_AUTOSTART_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 644 $(RTSP_SERVER_AUTOSTART_PKGDIR)/src/rtsp_server.service $(TARGET_DIR)/usr/lib/systemd/system/rtsp_server.service
endef

$(eval $(generic-package))
