# Inherit from the common OrangeFox product configuration
$(call inherit-product, vendor/orangefox/config/common.mk)

# Inherit from the TWRP makefile, assuming it contains base device configurations
$(call inherit-product, $(LOCAL_PATH)/twrp_xun.mk)

# Optimization: Remove some TWRP packages if OrangeFox provides its own alternatives or they are not needed.
# This is an example; actual packages to remove might differ based on OrangeFox's structure.
PRODUCT_PACKAGES_DEBUG += \
    cppreopts.sh \
    otapreopt_script \
    update_engine \
    update_verifier

# Product Specifics for OrangeFox
PRODUCT_NAME := orangefox_xun
PRODUCT_DEVICE := xun
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Pad SE
PRODUCT_MANUFACTURER := Xiaomi

# OrangeFox specific variables (user may need to customize these later)
OF_MAINTAINER := $(shell echo "$$(echo "$(TARGET_PRODUCT)" | sed -e "s/.*_//g")") # Sets maintainer to device name by default
# OF_DEFAULT_THEME := # User can set a specific OrangeFox theme here if needed
OF_SCREEN_H := 1920
OF_STATUS_H := 80  # Example value, adjust as needed
OF_STATUS_INDENT_LEFT := 48 # Example value
OF_STATUS_INDENT_RIGHT := 48 # Example value
OF_HIDE_NOTCH := 1 # Example if device has a notch and status bar icons need adjustment
OF_ALLOW_DISABLE_NAVBAR := 1 # Example

# Ensure this is set for OrangeFox if it wasn't in the inherited twrp_xun.mk
TARGET_BOOTLOADER_BOARD_NAME := bengal 

# If twrp_xun.mk already has PRODUCT_BUILD_PROP_OVERRIDES, OrangeFox might override or add to them here if needed.
# Example:
# PRODUCT_BUILD_PROP_OVERRIDES += \
#    PRIVATE_BUILD_DESC="orangefox_xun-userdebug 12.1 YYYYMMDD test-keys"

# Ensure bootanimation is disabled for faster boot (OrangeFox specific way if any, or general)
TARGET_BOOTANIMATION_HALF_RES := true # May or may not be respected/needed by OF
TARGET_BOOTANIMATION_PRELOAD := false
TARGET_BOOTANIMATION_TEXTURE_CACHE := false
TARGET_NO_BOOT_MESSAGE := true

# Disable extra languages from TWRP if OrangeFox handles languages differently or to save space
# TW_EXTRA_LANGUAGES := false # Overriding the one from BoardConfig if necessary for OF
