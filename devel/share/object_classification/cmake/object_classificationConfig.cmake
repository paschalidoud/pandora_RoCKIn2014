# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()


if(object_classification_CONFIG_INCLUDED)
  return()
endif()
set(object_classification_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(object_classification_SOURCE_PREFIX /home/paschalidoud/pandora_RoCKIn2014/src/object_classification)
  set(object_classification_DEVEL_PREFIX /home/paschalidoud/pandora_RoCKIn2014/devel)
  set(object_classification_INSTALL_PREFIX "")
  set(object_classification_PREFIX ${object_classification_DEVEL_PREFIX})
else()
  set(object_classification_SOURCE_PREFIX "")
  set(object_classification_DEVEL_PREFIX "")
  set(object_classification_INSTALL_PREFIX /home/paschalidoud/pandora_RoCKIn2014/install)
  set(object_classification_PREFIX ${object_classification_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'object_classification' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(object_classification_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/paschalidoud/pandora_RoCKIn2014/src/object_classification/include" STREQUAL "")
  set(object_classification_INCLUDE_DIRS "")
  set(_include_dirs "/home/paschalidoud/pandora_RoCKIn2014/src/object_classification/include")
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir}" STREQUAL "include")
      get_filename_component(include "${object_classification_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'object_classification' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  Ask the maintainer 'aitor <aitor@todo.todo>' to fix it.")
      endif()
    else()
      message(FATAL_ERROR "Project 'object_classification' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/paschalidoud/pandora_RoCKIn2014/src/object_classification/${idir}'.  Ask the maintainer 'aitor <aitor@todo.todo>' to fix it.")
    endif()
    _list_append_unique(object_classification_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^debug|optimized|general$")
    list(APPEND object_classification_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND object_classification_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND object_classification_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/paschalidoud/pandora_RoCKIn2014/devel/lib;/home/paschalidoud/object_ws/devel/lib;/home/paschalidoud/object_ws/src/object_recognition_msg/devel/lib;/home/paschalidoud/cob_workspace/devel/lib;/home/paschalidoud/pandora/pandora_gazebo/devel/lib;/home/paschalidoud/catkin_ws/devel/lib;/home/paschalidoud/pandora/pandora_develop/pandora_runtime/devel/lib;/home/paschalidoud/pandora/pandora_develop/pandora_robot/devel/lib;/home/paschalidoud/pandora/pandora_develop/pandora_common/devel/lib;/home/paschalidoud/pandora/pandora_develop/pandora_communications/devel/lib;/opt/ros/hydro/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(object_classification_LIBRARY_DIRS ${lib_path})
      list(APPEND object_classification_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'object_classification'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND object_classification_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(object_classification_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${object_classification_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 object_classification_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${object_classification_dep}_FOUND)
      find_package(${object_classification_dep} REQUIRED)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${object_classification_dep} REQUIRED ${depend_list})
  endif()
  _list_append_unique(object_classification_INCLUDE_DIRS ${${object_classification_dep}_INCLUDE_DIRS})
  _list_append_deduplicate(object_classification_LIBRARIES ${${object_classification_dep}_LIBRARIES})
  _list_append_unique(object_classification_LIBRARY_DIRS ${${object_classification_dep}_LIBRARY_DIRS})
  list(APPEND object_classification_EXPORTED_TARGETS ${${object_classification_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${object_classification_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
