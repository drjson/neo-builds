############################################################
#
# virtualradar-admin
#
#############################################################

VIRTUALRADAR_ADMIN_VERSION = latest
VIRTUALRADAR_ADMIN_SOURCE = VirtualRadar.WebAdminPlugin.tar.gz
VIRTUALRADAR_ADMIN_SITE = http://www.virtualradarserver.co.uk/Files
VIRTUALRADAR_ADMIN_LICENSE = Freeware 
VIRTUALRADAR_ADMIN_INSTALL_STAGING = NO
VIRTUALRADAR_ADMIN_STRIP_COMPONENTS = 0
VIRTUALRADAR_ADMIN_DEPENDENCIES = virtualradar


define VIRTUALRADAR_ADMIN_INSTALL_TARGET_CMDS
	rsync -av $(@D)/* $(TARGET_DIR)/opt/virtualradar/
endef

$(eval $(generic-package))
