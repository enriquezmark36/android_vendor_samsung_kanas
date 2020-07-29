#
# Copyright (C) 2016 Android Open Source Project
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PROPRIETARY_FILES_VENDOR := \
	bin/at_distributor \
	bin/engpc \
	bin/ext_data.sh \
	bin/ext_kill.sh \
	bin/ext_symlink.sh \
	bin/lpm \
	bin/macloader \
	bin/phoneserver \
	etc/AGPS_CA.pem \
	etc/plmn_delta.bin \
	etc/plmn_se13.bin \
	etc/MSLConfig.txt \
	etc/gps.conf \
	etc/license.key \
	etc/security.key \
	etc/rxn_config_data \
	etc/mrvl_agps_default.conf \
	etc/mrvl_gps_platform.conf \
	etc/permissions/com.google.widevine.software.drm.xml \
	etc/pxa_testcfg.ini \
	etc/rom.bin \
	etc/wifi/bcmdhd_apsta.bin \
	etc/wifi/bcmdhd_mfg.bin \
	etc/wifi/bcmdhd_p2p.bin \
	etc/wifi/bcmdhd_sta.bin \
	etc/wifi/nvram_net.txt \
	etc/wifi/nvram_mfg.txt \
	framework/com.google.widevine.software.drm.jar \
	lib/egl/libEGL_mali.so \
	lib/egl/libGLESv1_CM_mali.so \
	lib/egl/libGLESv2_mali.so \
	lib/hw/gps.vendor.sc8830.so \
	lib/libagps_hal.so \
	lib/libatparser.so \
	lib/libboost.so \
	lib/libfactoryutil.so \
	lib/libMali.so \
	lib/libomission_avoidance.so \
	lib/libomx_aacdec_sprd.so \
	lib/libomx_avcdec_hw_sprd.so \
	lib/libomx_avcdec_sw_sprd.so \
	lib/libomx_avcenc_hw_sprd.so \
	lib/libomx_m4vh263dec_hw_sprd.so \
	lib/libomx_m4vh263dec_sw_sprd.so \
	lib/libomx_m4vh263enc_hw_sprd.so \
	lib/libomx_mp3dec_sprd.so \
	lib/libomx_vpxdec_hw_sprd.so \
	lib/libreference-ril_sp.so \
	lib/libsecnativefeature.so \
	lib/libsprd_agps_agent.so \
	lib/libQmageDecoder.so \
	lib/libwvm.so \
	media/battery_charging_5.qmg \
	media/battery_charging_10.qmg \
	media/battery_charging_15.qmg \
	media/battery_charging_20.qmg \
	media/battery_charging_25.qmg \
	media/battery_charging_30.qmg \
	media/battery_charging_35.qmg \
	media/battery_charging_40.qmg \
	media/battery_charging_45.qmg \
	media/battery_charging_50.qmg \
	media/battery_charging_55.qmg \
	media/battery_charging_60.qmg \
	media/battery_charging_65.qmg \
	media/battery_charging_70.qmg \
	media/battery_charging_75.qmg \
	media/battery_charging_80.qmg \
	media/battery_charging_85.qmg \
	media/battery_charging_90.qmg \
	media/battery_charging_95.qmg \
	media/battery_charging_100.qmg \
	media/battery_batteryerror.qmg \
	media/battery_error.qmg \
	media/chargingwarning.qmg \
	media/Disconnected.qmg

# All other files that really needed to go to the /system/ partition
# TODO: We could just merge these with the rest of the tree, no?
PROPRIETARY_FILES_SYSTEM := \
	vendor/firmware/BCM4330B1_002.001.003.1025.1303.hcd \
	vendor/lib/libWVStreamControlAPI_L3.so \
	vendor/lib/libwvdrm_L3.so \
	vendor/lib/mediadrm/libwvdrmengine.so \

PRODUCT_COPY_FILES += \
	$(foreach f,$(PROPRIETARY_FILES_SYSTEM),vendor/samsung/kanas/proprietary/$(f):system/$(f)) \
	$(foreach f,$(PROPRIETARY_FILES_VENDOR),vendor/samsung/kanas/proprietary/$(f):system/vendor/$(f))
