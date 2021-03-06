# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

if(DEFINED HUNTER_CMAKE_PROJECTS_ANDROID_SDK_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_ANDROID_SDK_HUNTER_CMAKE_ 1)
endif()

include(hunter_add_version)
include(hunter_configuration_types)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    Android-SDK
    VERSION
    "0.0.1"
    URL
    "https://github.com/hunter-packages/android-sdk/archive/v0.0.1.tar.gz"
    SHA1
    3b151f3cb559dc2ae1d0df85155e9cae5a33958d
)

# This is unpack-like package. No need to install variants
hunter_configuration_types(Android-SDK CONFIGURATION_TYPES Release)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_download(PACKAGE_NAME Android-SDK)
