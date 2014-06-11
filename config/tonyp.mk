#tonyp CM11 customizations

PRODUCT_PROPERTY_OVERRIDES += \
    ro.tonyp.version=1

PRODUCT_COPY_FILES +=  \
    vendor/cm/prebuilt/common/apk/feavCamera.apk:system/app/feavCamera.apk \
    vendor/cm/prebuilt/common/apk/PerformanceControl.apk:system/app/PerformanceControl.apk \
    vendor/cm/prebuilt/common/apk/BarcodeScanner.apk:system/app/BarcodeScanner.apk

# Enable mini gapps
MINI_GAPPS := true
$(call inherit-product, vendor/google/tiny_gapps_nonneon_tonyp.mk)