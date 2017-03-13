############################################################
#
# virtualradar-custom-content
#
#############################################################

VIRTUALRADAR_CUSTOM_CONTENT_VERSION = latest
VIRTUALRADAR_CUSTOM_CONTENT_SOURCE = VirtualRadar.CustomContentPlugin.tar.gz
VIRTUALRADAR_CUSTOM_CONTENT_SITE = http://www.virtualradarserver.co.uk/Files
VIRTUALRADAR_CUSTOM_CONTENT_LICENSE = Freeware 
VIRTUALRADAR_CUSTOM_CONTENT_INSTALL_STAGING = NO
VIRTUALRADAR_CUSTOM_CONTENT_STRIP_COMPONENTS = 0
VIRTUALRADAR_CUSTOM_CONTENT_DEPENDENCIES = virtualradar


define VIRTUALRADAR_CUSTOM_CONTENT_INSTALL_TARGET_CMDS
	rsync -av $(@D)/* $(TARGET_DIR)/opt/virtualradar/
endef

$(eval $(generic-package))
