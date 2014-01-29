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


if(soc_msg_and_serv_CONFIG_INCLUDED)
  return()
endif()
set(soc_msg_and_serv_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("FALSE" STREQUAL "TRUE")
  set(soc_msg_and_serv_SOURCE_PREFIX /home/paschalidoud/pandora_RoCKIn2014/src/object_classification_msg/src/soc_msg_and_serv)
  set(soc_msg_and_serv_DEVEL_PREFIX /home/paschalidoud/pandora_RoCKIn2014/devel)
  set(soc_msg_and_serv_INSTALL_PREFIX "")
  set(soc_msg_and_serv_PREFIX ${soc_msg_and_serv_DEVEL_PREFIX})
else()
  set(soc_msg_and_serv_SOURCE_PREFIX "")
  set(soc_msg_and_serv_DEVEL_PREFIX "")
  set(soc_msg_and_serv_INSTALL_PREFIX /home/paschalidoud/pandora_RoCKIn2014/install)
  set(soc_msg_and_serv_PREFIX ${soc_msg_and_serv_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'soc_msg_and_serv' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(soc_msg_and_serv_FOUND_CATKIN_PROJECT TRUE)

if(NOT "include" STREQUAL "")
  set(soc_msg_and_serv_INCLUDE_DIRS "")
  set(_include_dirs "include")
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir}" STREQUAL "include")
      get_filename_component(include "${soc_msg_and_serv_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'soc_msg_and_serv' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  Ask the maintainer 'aitor <aitor@todo.todo>' to fix it.")
      endif()
    else()
      message(FATAL_ERROR "Project 'soc_msg_and_serv' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/paschalidoud/pandora_RoCKIn2014/install/${idir}'.  Ask the maintainer 'aitor <aitor@todo.todo>' to fix it.")
    endif()
    _list_append_unique(soc_msg_and_serv_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^debug|optimized|general$")
    list(APPEND soc_msg_and_serv_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND soc_msg_and_serv_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND soc_msg_and_serv_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/paschalidoud/pandora_RoCKIn2014/install/lib;/home/paschalidoud/object_ws/devel/lib;/home/paschalidoud/object_ws/src/object_recognition_msg/devel/lib;/home/paschalidoud/cob_workspace/devel/lib;/home/paschalidoud/pandora/pandora_gazebo/devel/lib;/home/paschalidoud/catkin_ws/devel/lib;/home/paschalidoud/pandora/pandora_develop/pandora_runtime/devel/lib;/home/paschalidoud/pandora/pandora_develop/pandora_robot/devel/lib;/home/paschalidoud/pandora/pandora_develop/pandora_common/devel/lib;/home/paschalidoud/pandora/pandora_develop/pandora_communications/devel/lib;/opt/ros/hydro/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(soc_msg_and_serv_LIBRARY_DIRS ${lib_path})
      list(APPEND soc_msg_and_serv_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'soc_msg_and_serv'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND soc_msg_and_serv_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(soc_msg_and_serv_EXPORTED_TARGETS "soc_msg_and_serv_generate_messages_cpp;soc_msg_and_serv_generate_messages_lisp;soc_msg_and_serv_generate_messages_py")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${soc_msg_and_serv_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 soc_msg_and_serv_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${soc_msg_and_serv_dep}_FOUND)
      find_package(${soc_msg_and_serv_dep} REQUIRED)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${soc_msg_and_serv_dep} REQUIRED ${depend_list})
  endif()
  _list_append_unique(soc_msg_and_serv_INCLUDE_DIRS ${${soc_msg_and_serv_dep}_INCLUDE_DIRS})
  _list_append_deduplicate(soc_msg_and_serv_LIBRARIES ${${soc_msg_and_serv_dep}_LIBRARIES})
  _list_append_unique(soc_msg_and_serv_LIBRARY_DIRS ${${soc_msg_and_serv_dep}_LIBRARY_DIRS})
  list(APPEND soc_msg_and_serv_EXPORTED_TARGETS ${${soc_msg_and_serv_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "soc_msg_and_serv-msg-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${soc_msg_and_serv_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
