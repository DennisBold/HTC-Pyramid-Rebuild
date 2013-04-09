# QCOM COMMON
$(call inherit-product, device/qcom/common/common.mk)

# MSM8660 COMMON
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

# OVERLAYS
DEVICE_PACKAGE_OVERLAYS += device/htc/pyramid/overlay

PRODUCT_COPY_FILES += \
    device/htc/pyramid/ramdisk/fstab.pyramid:root/fstab.pyramid \
    device/htc/pyramid/ramdisk/init.pyramid.rc:root/init.pyramid.rc \
    device/htc/pyramid/ramdisk/init.pyramid.usb.rc:root/init.pyramid.usb.rc \
    device/htc/pyramid/ramdisk/ueventd.pyramid.rc:root/ueventd.pyramid.rc

PRODUCT_COPY_FILES += \
    device/htc/pyramid/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# GPS
PRODUCT_PACKAGES += \
	gps.pyramid

# LIGHTS
PRODUCT_PACKAGES += \
	lights.pyramid

# GPS
# NEED TO CHECK IF BOARDCONFIG FOR 8660 PROVIDES

# BLUETOOTH
# QCOM COMMON PROVIDES


# DEVICE
PRODUCT_RELEASE_NAME := pyramid
PRODUCT_DEVICE := pyramid
PRODUCT_NAME := full_pyramid
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC Sensation
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_pyramid BUILD_FINGERPRINT=tmous/htc_pyramid/pyramid:4.0.3/IML74K/356011.14:user/release-keys PRIVATE_BUILD_DESC="3.32.531.14 CL356011 release-keys" BUILD_NUMBER=356011
