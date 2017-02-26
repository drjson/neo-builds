############################################################
#
# acarsdec
#
#############################################################

ACARSDEC_VERSION = master
ACARSDEC_SITE = http://github.com/tleconte/acarsdec.git
ACARSDEC_SITE_METHOD = git
ACARSDEC_LICENSE = GPLv2 
ACARSDEC_LICENSE_FILES = COPYING
ACARSDEC_INSTALL_STAGING = NO
ACARSDEC_DEPENDENCIES = librtlsdr sqlite

define ACARSDEC_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) CFLAGS="$(TARGET_CFLAGS) -pthread -D WITH_RTL" \
	LDLIBS="$(TARGET_LDLIBS) -lm -pthread -lrtlsdr" -C $(@D) acarsdec acarsserv
endef

define ACARSDEC_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/acarsdec $(TARGET_DIR)/usr/bin
    $(INSTALL) -D -m 0755 $(@D)/acarsserv $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
