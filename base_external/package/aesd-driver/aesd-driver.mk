##############################################################
#
# aesd-driver
#
##############################################################
#TODO: Fill up the contents below in order to reference your assignment 7 git contents
AESD_DRIVER_VERSION = cdae2b77ee6410f57dc54aa7efce52d16db97768
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_DRIVER_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-bala9248.git

AESD_DRIVER_SITE_METHOD = git
AESD_DRIVER_GIT_SUBMODULES = YES

AESD_DRIVER_MODULE_SUBDIRS = aesd-char-driver/

# Install load/unload and test scripts
define AESD_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin	
	
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/* $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
