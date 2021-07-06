# Gem5 aarch64 support
COMPATIBLE_MACHINE_gem5-arm64 = "gem5-arm64"

PROVIDES_gem5-arm64 += "virtual/gem5-bootloader"

# For gem5 we use the dtb generated by gem5 directly
DEPENDS_append_gem5-arm64 = " gem5-aarch64-dtb"
BOOT_WRAPPER_AARCH64_DEVICETREE_gem5-arm64 = "gem5-aarch64.dtb"

# The dtb must be generated for us to generate the axf
DEPLOY_DEPEND_LIST ?= ""
DEPLOY_DEPEND_LIST_gem5-arm64 = " gem5-aarch64-dtb:do_deploy"
do_deploy[depends] += "${DEPLOY_DEPEND_LIST}"