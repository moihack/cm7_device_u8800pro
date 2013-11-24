$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

#DEVICE_PACKAGE_OVERLAYS := device/huawei/u8800pro/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := u8800pro
PRODUCT_DEVICE := u8800pro
PRODUCT_MODEL := u8800pro
PRODUCT_MANUFACTURER := huawei
PRODUCT_BRAND := huawei
PRODUCT_BOARD := u8800pro

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    SpareParts \
    overlay.default \
    gps.u8800pro \
    lights.u8800pro \
    gralloc.u8800pro \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    dexpreopt \
    Torch \
    CMParts \
    CMScreenshot \
    ADWLauncher \
    FM \
    DSPManager \
    ThemeChooser \
    ThemeManager \

# proprietary side of the device
$(call inherit-product-if-exists, vendor/huawei/u8800pro/u8800pro-vendor.mk)

DISABLE_DEXPREOPT := false

# Init
PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/root/init.huawei.rc:root/init.huawei.rc \
    device/huawei/u8800pro/root/init.rc:root/init.rc \
    device/huawei/u8800pro/root/init:root/init \
    device/huawei/u8800pro/root/adbd:root/sbin/adbd \
    device/huawei/u8800pro/root/gk:root/sbin/gk \
    device/huawei/u8800pro/root/geno:root/sbin/geno \
    device/huawei/u8800pro/root/odex:root/sbin/odex \
    device/huawei/u8800pro/root/timing:root/sbin/timing \
    device/huawei/u8800pro/root/ueventd.rc:root/ueventd.rc \
    device/huawei/u8800pro/root/initlogo.rle:root/initlogo.rle

# keylayout
PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/qwerty.kl:system/usr/keylayout/qwerty.kl

# fstab
PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/vold.fstab:system/etc/vold.fstab

# enhanced.conf
PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/enhanced.conf:system/etc/enhanced.conf

PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/huawei/u8800pro/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/huawei/u8800pro/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8800pro/media_profiles.xml:system/etc/media_profiles.xml

# vidc firmware
PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/firmware/vidc_720p_command_control.fw:/system/etc/firmware/vidc_720p_command_control.fw \
    device/huawei/u8800pro/firmware/vidc_720p_h263_dec_mc.fw:/system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/huawei/u8800pro/firmware/vidc_720p_h264_dec_mc.fw:/system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/huawei/u8800pro/firmware/vidc_720p_h264_enc_mc.fw:/system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/huawei/u8800pro/firmware/vidc_720p_mp4_dec_mc.fw:/system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/huawei/u8800pro/firmware/vidc_720p_mp4_enc_mc.fw:/system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/huawei/u8800pro/firmware/vidc_720p_vc1_dec_mc.fw:/system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/huawei/u8800pro/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \
    device/huawei/u8800pro/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

# prebuilt
PRODUCT_COPY_FILES += \
    device/huawei/u8800pro/prebuilt/libhardware_legacy.so:/system/lib/libhardware_legacy.so \
    device/huawei/u8800pro/prebuilt/overlay.default.so:/system/lib/hw/overlay.default.so \
    device/huawei/u8800pro/prebuilt/BCM4329.hcd:/system/etc/bluetooth/BCM4329.hcd \
    device/huawei/u8800pro/prebuilt/dhd.ko:/system/wifi/dhd.ko

# CM7 prebuilts
PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/cyanogen/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/cyanogen/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/cyanogen/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/cyanogen/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/cyanogen/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/cyanogen/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/cyanogen/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/cyanogen/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/cyanogen/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/cyanogen/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf     
    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.build.baseband_version=129005 \
    ro.telephony.default_network=0 \
    ro.telephony.call_ring.multiple=false \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libril-qc-1.so \
    rild.libargs=-d /dev/smd0 \
    ro.telephony.ril_class=lgeqcom \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=180 \
    ro.config.wifi_chip_is_bcm=true \
    ro.com.android.dataroaming=false  

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    persist.sys.timezone=Europe/Athens

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.hwfeature_slavecamera=yes \
    ro.config.hwcameraset=63 \
    hw.secondary_mic=0 \
    ro.config.hw_addsettingsdbex=0 \
    ro.config.hw_gcf_mms=true \
    ro.config.wifi_chip_is_bcm=false \
    ro.config.hwft_PNN_function=true \
    persist.cust.tel.adapt=1 \
    persist.cust.tel.eons=1 \
    ro.config.hwfeature_gps_test=0 \
    ro.config.hwfeature_ecc=true \
    ro.config.lowbattery_shutdown=1 \
    ro.config.hwfeature_wakeupkey=1 \
    ro.config.endkeybehavior=true \
    ro.config.hw_menu_unlockscreen=false \
    ro.media.enc.lprof.duration=30 \
    ro.config.PicMaxSize=5mp \
    ro.config.hw_temperature_warn=true \
    ro.config.hw_clocksetting=0 \
    ro.additionalmounts=/HWUserData \
    ro.vold.switchablepair=/mnt/sdcard,/HWUserData \
    ro.vold.umsdirtyratio=20 \

# u8800pro uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# This should not be needed but on-screen keyboard uses the wrong density without it.
PRODUCT_PROPERTY_OVERRIDES += \
    qemu.sf.lcd_density=240 

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enable_bypass=1 \
    ro.media.dec.jpeg.memcap=20000000 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.heapsize=32m \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.dexopt-data-only=1 \
    ro.opengles.version=131072  \
    ro.compcache.default=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=CyanogenMod-7.2.0-u8800pro-Moihack \
    ro.config.notification_sound=Tinkerbell.ogg \
    ro.config.alarm_alert=Alarm_Classic.ogg \
    ro.config.ringtone=Ring_Digital_02.ogg \
    ro.setupwizard.mode=DISABLED

# addon by Geno
$(call inherit-product-if-exists, addon/addon.mk)
$(call inherit-product-if-exists, device/huawei/u8800pro/wifi/wifi.mk)

# common msm7x30 configs
# $(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)
