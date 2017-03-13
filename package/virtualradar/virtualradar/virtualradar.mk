############################################################
#
# virtualradar
#
#############################################################

VIRTUALRADAR_VERSION = latest
VIRTUALRADAR_SOURCE = VirtualRadar.tar.gz
VIRTUALRADAR_SITE = http://www.virtualradarserver.co.uk/Files
VIRTUALRADAR_LICENSE = Freeware 
VIRTUALRADAR_STRIP_COMPONENTS = 0
VIRTUALRADAR_INSTALL_STAGING = NO
VIRTUALRADAR_EXE_CONFIG = VirtualRadar.exe.config.tar.gz # Not actually a gz
VIRTUALRADAR_EXTRA_DOWNLOADS = $(VIRTUALRADAR_EXE_CONFIG)
# VIRTUALRADAR_DEPENDENCIES = host-mono


define VIRTUALRADAR_EXTRACT_CONFIG
	tar -C $(@D) -xvf $(call qstrip,$(BR2_DL_DIR))/$(VIRTUALRADAR_EXE_CONFIG)
endef

VIRTUALRADAR_PRE_INSTALL_TARGET_HOOKS += VIRTUALRADAR_EXTRACT_CONFIG

#$(TARGET_CONFIGURE_OPTS) 
#define VIRTUALRADAR_BUILD_CMDS
#	$(HOST_DIR)/usr/bin/mkbundle -o $(@D)/VirtualRadar \
#	    $(@D)/VirtualRadar.exe $(@D)/*.dll --deps --static 
#endef

define VIRTUALRADAR_INSTALL_TARGET_CMDS
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/opt/virtualradar
	rsync -av $(@D)/* $(TARGET_DIR)/opt/virtualradar/
endef


define VIRTUALRADAR_INSTALL_SERVICE
	$(INSTALL) -D -m 0755 $(VIRTUALRADAR_PKGDIR)/S63vrs $(TARGET_DIR)/etc/init.d
endef

ifeq ($(BR2_PACKAGE_VIRTUALRADAR_SERVICE),y)
    VIRTUALRADAR_POST_INSTALL_TARGET_HOOKS += VIRTUALRADAR_INSTALL_SERVICE
endif

#ifeq ($(BR2_TOOLCHAIN_USES_UCLIBC),y)
#MONO_LIBC_NAME = libc.so.0
#else ifeq ($(BR2_TOOLCHAIN_USES_MUSL),y)
#MONO_LIBC_NAME = libc.so
#endif
#    
#ifneq ($(MONO_LIBC_NAME),)
#define MONO_TWEAK_LIBC_NAME
#	$(SED) 's/libc.so.6/$(MONO_LIBC_NAME)/' $(TARGET_DIR)/etc/mono/config
#endef
#MONO_POST_INSTALL_TARGET_HOOKS += MONO_TWEAK_LIBC_NAME
#endif

$(eval $(generic-package))
