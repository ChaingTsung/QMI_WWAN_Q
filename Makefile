
include $(TOPDIR)/rules.mk

PKG_NAME:=qmi_wwan_q
PKG_VERSION:=1.2
PKG_RELEASE:=9

include $(INCLUDE_DIR)/kernel.mk
include $(INCLUDE_DIR)/package.mk

define KernelPackage/qmi_wwan_q
  SUBMENU:=WWAN Support
  TITLE:=Quectel Official Linux USB QMI WWAN Driver
  DEPENDS:=+kmod-usb-net +kmod-usb-wdm
  FILES:=$(PKG_BUILD_DIR)/qmi_wwan_q.ko
  AUTOLOAD:=$(call AutoLoad,81,qmi_wwan_q)
endef

define KernelPackage/qmi_wwan_q/description
  Quectel Linux USB QMI WWAN Driver
endef

MAKE_OPTS:= \
	ARCH="$(LINUX_KARCH)" \
	CROSS_COMPILE="$(TARGET_CROSS)" \
	CXXFLAGS="$(TARGET_CXXFLAGS)" \
	M="$(PKG_BUILD_DIR)" \
	$(EXTRA_KCONFIG)

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Build/Compile
	$(MAKE) -C "$(LINUX_DIR)" \
		$(MAKE_OPTS) \
		modules
endef

$(eval $(call KernelPackage,qmi_wwan_q))