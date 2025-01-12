################################################################################
#
# curl-example
#
################################################################################

CURL_EXAMPLE_VERSION = 1.0
CURL_EXAMPLE_SITE = ./package/curl-example/src
CURL_EXAMPLE_SITE_METHOD = local
CURL_EXAMPLE_DEPENDENCIES += libcurl

define CURL_EXAMPLE_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define CURL_EXAMPLE_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/curl-example $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
