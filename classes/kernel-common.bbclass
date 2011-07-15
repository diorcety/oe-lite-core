# -*- mode:python; -*-

INHIBIT_PACKAGE_STRIP = "1"

inherit kernel-arch

KERNEL_VERSION_PATCHLEVEL = "${@'.'.join(d.get('PV').split('.')[:2])}"

# For the kernel, we don't want the '-e MAKEFLAGS=' in EXTRA_OEMAKE.
# We don't want to override kernel Makefile variables from the environment
EXTRA_OEMAKE = "ARCH=${KERNEL_ARCH}"

CFLAGS[unexport]   = "1"
CPPFLAGS[unexport] = "1"
CXXFLAGS[unexport] = "1"
LDFLAGS[unexport]  = "1"
MACHINE[unexport]  = "1"
