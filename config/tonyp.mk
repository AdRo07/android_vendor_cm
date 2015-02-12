#tonyp CM11 customizations

PRODUCT_PROPERTY_OVERRIDES += \
    ro.tonyp.version=2015-beta

PRODUCT_COPY_FILES +=  \
    vendor/cm/prebuilt/common/apk/PerformanceControl.apk:system/app/PerformanceControl.apk \
    vendor/cm/prebuilt/common/apk/BarcodeScanner.apk:system/app/BarcodeScanner.apk

# Ship precompiled netd (compiled with GCC 4.7)
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/bin/netd:system/bin/netd

# Enable mini gapps
MINI_GAPPS := true
$(call inherit-product, vendor/google/tiny_gapps_nonneon_tonyp.mk)