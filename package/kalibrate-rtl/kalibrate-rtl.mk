############################################################
#
# kalibrate-rtl
#
#############################################################

KALIBRATE_RTL_VERSION = master
KALIBRATE_RTL_SITE = http://github.com/steve-m/kalibrate-rtl.git
KALIBRATE_RTL_SITE_METHOD = git
KALIBRATE_RTL_LICENSE = BSD-2c 
KALIBRATE_RTL_LICENSE_FILES = COPYING
KALIBRATE_RTL_INSTALL_STAGING = NO
KALIBRATE_RTL_AUTORECONF = YES
KALIBRATE_RTL_DEPENDENCIES = librtlsdr fftw


$(eval $(autotools-package))
