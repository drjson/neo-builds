############################################################
#
# dump1090
#
#############################################################

DUMP1090_VERSION = master
DUMP1090_SITE = http://github.com/MalcolmRobb/dump1090.git
DUMP1090_SITE_METHOD = git
DUMP1090_LICENSE = BSD-3c 
DUMP1090_LICENSE_FILES = COPYING
DUMP1090_INSTALL_STAGING = NO
DUMP1090_DEPENDENCIES = librtlsdr

define DUMP1090_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define DUMP1090_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/dump1090 $(TARGET_DIR)/usr/bin
    $(INSTALL) -D -m 0755 $(@D)/view1090 $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
