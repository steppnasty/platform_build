#
# Copyright (C) 2007 The Android Open Source Project
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

PRODUCT_BRAND := generic
PRODUCT_DEVICE := generic
PRODUCT_NAME := core

PRODUCT_PROPERTY_OVERRIDES := \
    ro.config.notification_sound=OnTheHunt.ogg \
    ro.config.alarm_alert=Cesium.ogg

PRODUCT_PACKAGES := \
    ApplicationsProvider \
    BackupRestoreConfirmation \
    Browser \
    Contacts \
    ContactsProvider \
    DefaultContainerService \
    DownloadProvider \
    DownloadProviderUi \
    HTMLViewer \
    Home \
    KeyChain \
    MediaProvider \
    PackageInstaller \
    PicoTts \
    SettingsProvider \
    SharedStorageBackup \
    TelephonyProvider \
    UserDictionaryProvider \
    VpnDialogs \
    apache-xml \
    bouncycastle \
    bu \
    cacerts \
    com.android.location.provider \
    com.android.location.provider.xml \
    core \
    core-junit \
    dalvikvm \
    dexdeps \
    dexdump \
    dexlist \
    dexopt \
    dmtracedump \
    dx \
    ext \
    filterfw \
    framework-res \
    hprof-conv \
    icu.dat \
    installd \
    ip \
    ip-up-vpn \
    ip6tables \
    iptables \
    keystore \
    keystore.default \
    libOpenMAXAL \
    libOpenSLES \
    libaudiopreprocessing \
    libcrypto \
    libdvm \
    libexpat \
    libfilterfw \
    libfilterpack_imageproc \
    libgabi++ \
    libicui18n \
    libicuuc \
    libjavacore \
    libkeystore \
    libnativehelper \
    libnfc_ndef \
    libpowermanager \
    libspeexresampler \
    libsqlite_jni \
    libssl \
    libstagefright \
    libstagefright_chromium_http \
    libstagefright_soft_aacdec \
    libstagefright_soft_aacenc \
    libstagefright_soft_amrdec \
    libstagefright_soft_amrnbenc \
    libstagefright_soft_amrwbenc \
    libstagefright_soft_flacenc \
    libstagefright_soft_g711dec \
    libstagefright_soft_h264dec \
    libstagefright_soft_h264enc \
    libstagefright_soft_mp3dec \
    libstagefright_soft_mpeg4dec \
    libstagefright_soft_mpeg4enc \
    libstagefright_soft_vorbisdec \
    libstagefright_soft_vpxdec \
    libstagefright_soft_rawdec \
    libvariablespeed \
    libwebrtc_audio_preprocessing \
    libwilhelm \
    libz \
    screencap \
    sensorservice \
    telephony-common \
    mms-common \
    drmserver \
    libdrmframework \
    libdrmframework_jni \
    zoneinfo.dat \
    zoneinfo.idx \
    zoneinfo.version

PRODUCT_COPY_FILES += \
    system/core/rootdir/init.trace.rc:root/init.trace.rc \

# host-only dependencies
ifeq ($(WITH_HOST_DALVIK),true)
    PRODUCT_PACKAGES += \
        apache-xml-hostdex \
        bouncycastle-hostdex \
        core-hostdex \
	libjavacore \
        dalvik \
        zoneinfo-host.dat \
        zoneinfo-host.idx \
        zoneinfo-host.version
endif

ifeq ($(HAVE_SELINUX),true)
    PRODUCT_PACKAGES += \
        sepolicy \
        file_contexts \
        seapp_contexts \
        property_contexts \
        mac_permissions.xml
endif

$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
