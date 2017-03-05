############################################################
#
# mlat-client
#
#############################################################

MLAT_CLIENT_VERSION = v0.2.7
MLAT_CLIENT_SITE = http://github.com/mutability/mlat-client.git
MLAT_CLIENT_SITE_METHOD = git
MLAT_CLIENT_LICENSE = BSD-3c 
MLAT_CLIENT_LICENSE_FILES = COPYING
MLAT_CLIENT_INSTALL_STAGING = NO
MLAT_CLIENT_SETUP_TYPE = distutils


#define MLAT_CLIENT_INSTALL_TARGET_CMDS
#    $(INSTALL) -D -m 0755 $(@D)/MLAT_CLIENT $(TARGET_DIR)/usr/bin
#endef

$(eval $(python-package))
