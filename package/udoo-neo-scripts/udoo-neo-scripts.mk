############################################################
#
# udoo-neo-scripts
#
#############################################################

define UDOO_NEO_SCRIPTS_TEST_SCRIPTS
	$(INSTALL) -D -m 0755 $(UDOO_NEO_SCRIPTS_PKGDIR)test-accel-mag $(TARGET_DIR)/usr/bin
	$(INSTALL) -D -m 0755 $(UDOO_NEO_SCRIPTS_PKGDIR)test-bricks $(TARGET_DIR)/usr/bin
	$(INSTALL) -D -m 0755 $(UDOO_NEO_SCRIPTS_PKGDIR)test-gyro $(TARGET_DIR)/usr/bin
	$(INSTALL) -D -m 0755 $(UDOO_NEO_SCRIPTS_PKGDIR)test-udooneo $(TARGET_DIR)/usr/bin
endef

define UDOO_NEO_SCRIPTS_RESIZE_ROOTFS
	$(INSTALL) -D -m 0755 $(UDOO_NEO_SCRIPTS_PKGDIR)S22expand-rootpart $(TARGET_DIR)/etc/init.d
	$(INSTALL) -D -m 0755 $(UDOO_NEO_SCRIPTS_PKGDIR)S23expand-rootfs $(TARGET_DIR)/usr/init.d
endef

ifeq ($(BR2_PACKAGE_UDOO_NEO_TEST_SCRIPTS),y)
UDOO_NEO_SCRIPTS_POST_INSTALL_TARGET_HOOKS += UDOO_NEO_SCRIPTS_TEST_SCRIPTS
endif

ifeq ($(BR2_PACKAGE_UDOO_NEO_RESIZE_ROOTFS),y)
UDOO_NEO_SCRIPTS_POST_INSTALL_TARGET_HOOKS += UDOO_NEO_SCRIPTS_RESIZE_ROOTFS
endif

$(eval $(generic-package))
