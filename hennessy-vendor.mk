# Live wallpaper packages
PRODUCT_PACKAGES := \
    FmRadio \
    FingerprintService \
    SafeFingerprint \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES := \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS := vendor/xiaomi/henessy/overlay

$(call inherit-product, vendor/xiaomi/hennessy/hennessy-vendor-blobs.mk)
