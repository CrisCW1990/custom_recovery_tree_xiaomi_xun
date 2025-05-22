#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
# Copyright (C) 2024 OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_xun.mk \
    $(LOCAL_DIR)/orangefox_xun.mk

COMMON_LUNCH_CHOICES := \
    twrp_xun-userdebug \
    twrp_xun-eng \
    orangefox_xun-userdebug \
    orangefox_xun-eng
