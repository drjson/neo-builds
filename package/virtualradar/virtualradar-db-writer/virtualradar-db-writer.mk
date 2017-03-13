############################################################
#
# virtualradar-db-writer
#
#############################################################

VIRTUALRADAR_DB_WRITER_VERSION = latest
VIRTUALRADAR_DB_WRITER_SOURCE = VirtualRadar.DatabaseWriterPlugin.tar.gz
VIRTUALRADAR_DB_WRITER_SITE = http://www.virtualradarserver.co.uk/Files
VIRTUALRADAR_DB_WRITER_LICENSE = Freeware 
VIRTUALRADAR_DB_WRITER_INSTALL_STAGING = NO
VIRTUALRADAR_DB_WRITER_STRIP_COMPONENTS = 0
VIRTUALRADAR_DB_WRITER_DEPENDENCIES = virtualradar


define VIRTUALRADAR_DB_WRITER_INSTALL_TARGET_CMDS
	rsync -av $(@D)/* $(TARGET_DIR)/opt/virtualradar/
endef

$(eval $(generic-package))
