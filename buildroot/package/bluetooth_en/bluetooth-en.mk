################################################################################
#
# bluetooth-en
#
################################################################################

define BLUETOOTH_EN_INSTALL_TARGET_CMDS
	$(INSTALL) -dm700 $(TARGET_DIR)/var/lib/bluetooth
endef

$(eval $(generic-package))
