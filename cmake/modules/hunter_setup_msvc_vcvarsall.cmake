# Copyright (c) 2014, Ruslan Baratov
# All rights reserved.

cmake_minimum_required(VERSION 3.0)

include(hunter_internal_error)

macro(hunter_setup_msvc_vcvarsall)
  if(MSVC AND NOT HUNTER_MSVC_VCVARSALL)
    if("${CMAKE_GENERATOR}" MATCHES "Visual Studio ([0-9]+)($|( .*$))")
      
      set(_hunter_result "$ENV{VS${CMAKE_MATCH_0}0COMNTOOLS}")
      
      find_file(
          HUNTER_MSVC_VCVARSALL
          "vcvarsall.bat"
          PATHS
          "${_hunter_result}/../../VC"
          NO_DEFAULT_PATH
        )
    endif()
      
    if(NOT HUNTER_MSVC_VCVARSALL)
      hunter_internal_error("vcvarsall.bat not found in `${_hunter_result}`")
    endif()

  endif()
endmacro()
