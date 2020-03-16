#!/bin/bash

PKG_DIR=$(pwd)
CWD_DIR=$1
PATH_ARG=$2
DIST_DIR="${PKG_DIR}/dist"

source "${DIST_DIR}/color.sh"

color_init

INSTALL_DIR="${CWD_DIR}/${PATH_ARG}"
[ "${PATH_ARG:0:2}" == "./" ] && INSTALL_DIR="${CWD_DIR}/${PATH_ARG:2}"
[ "${PATH_ARG:0:1}" == "/" ] && INSTALL_DIR=$PATH_ARG

color "${BLUE}Make folder: ${YELLOW}${INSTALL_DIR}"
mkdir -p $INSTALL_DIR

function install_file {
  FILE=$1
  FILE_NAME=$(basename "${FILE}")
  if [ -f "${INSTALL_DIR}/${FILE_NAME}" ] ; then
    color "${RED}File already exists: ${YELLOW}${FILE}"
  else
    cp "${FILE}" "${INSTALL_DIR}"
  fi
}

color "${BLUE}Copy source files."
install_file "${DIST_DIR}/color.js"
install_file "${DIST_DIR}/color.sh"

color "${GREEN}Done."
color
