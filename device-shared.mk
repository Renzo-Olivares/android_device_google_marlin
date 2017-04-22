# Tethering
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# IMS
PRODUCT_PACKAGES += \
    com.android.ims.rcsmanager

# Update engine
PRODUCT_PACKAGES += brillo_update_payload

# Camera
PRODUCT_PACKAGES += libion

# Fingerprint sensor type
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.fingerprint=fpc

# opa prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opa.eligible_device=true
