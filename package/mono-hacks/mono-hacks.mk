############################################################
#
# mono-hacks
#
#############################################################


define MONO_HACKS_REDUCE_MONO_SIZE
	rm -rf $(TARGET_DIR)/usr/lib/mono/mono*
	rm -rf $(TARGET_DIR)/usr/lib/mono/xbuild*
	find $(TARGET_DIR)/usr/lib/mono/2.0-api -type f -not -name "mscorlib.dll" -delete
	find $(TARGET_DIR)/usr/lib/mono/3.5-api -type f -not -name "mscorlib.dll" -delete
	find $(TARGET_DIR)/usr/lib/mono/4.0 -type f -not -name "mscorlib.dll" -delete
	find $(TARGET_DIR)/usr/lib/mono/4.0-api -type f -not -name "mscorlib.dll" -delete
	find $(TARGET_DIR)/usr/lib/mono/4.5 -type f -not -name "mscorlib.dll" -delete
	find $(TARGET_DIR)/usr/lib/mono/4.5-api -type f -not -name "mscorlib.dll" -delete
	rm -f $(TARGET_DIR)/usr/bin/monodis
	@$(TARGET_STRIP) $(TARGET_DIR)/usr/bin/mono-sgen
	@$(TARGET_STRIP) $(TARGET_DIR)/usr/bin/mono-boehm
endef

MONO_POST_INSTALL_TARGET_HOOKS += MONO_HACKS_REDUCE_MONO_SIZE

#$(eval $(generic-package))
