############################################################
#
# virtualradar-db-editor
#
#############################################################

VIRTUALRADAR_DB_EDITOR_VERSION = latest
VIRTUALRADAR_DB_EDITOR_SOURCE = VirtualRadar.DatabaseEditorPlugin.tar.gz
VIRTUALRADAR_DB_EDITOR_SITE = http://www.virtualradarserver.co.uk/Files
VIRTUALRADAR_DB_EDITOR_LICENSE = Freeware 
VIRTUALRADAR_DB_EDITOR_INSTALL_STAGING = NO
VIRTUALRADAR_DB_EDITOR_STRIP_COMPONENTS = 0
VIRTUALRADAR_DB_EDITOR_DEPENDENCIES = virtualradar


define VIRTUALRADAR_DB_EDITOR_INSTALL_TARGET_CMDS
	rsync -av $(@D)/* $(TARGET_DIR)/opt/virtualradar/
endef

$(eval $(generic-package))
