#!/bin/bash

ARDUINO_LIBRARY_GITHUB="https://github.com/wind-river-rocket/arduino-library.git"
ARDUINO_DIR="arduino"
EXAMPLE_NAME="arduino-button"

if [ "x${WIND_PROJECT_ROOT}" == "x" ]
then
	echo "Please run this command prior to launching this script:"
	echo "    export WIND_PROJECT_ROOT"
	exit 1
fi

echo "Cloning arduino-library into project"
git clone ${ARDUINO_LIBRARY_GITHUB} ${WIND_PROJECT_ROOT}/${ARDUINO_DIR}

MAKEFILE_MD5=$(md5sum ${WIND_PROJECT_ROOT}/src/Makefile | cut -f1 -d' ')
MAIN_MD5=$(md5sum ${WIND_PROJECT_ROOT}/src/main.c | cut -f1 -d' ')

if [ "$MAKEFILE_MD5" == "fe5d4094be913a8d02c201e4e10be9b4" ] && \
   [ "$MAIN_MD5" == "64521231715490aef6596bc0fcf0a5aa" ]
then
	rm -f ${WIND_PROJECT_ROOT}/src/Makefile
	rm -f ${WIND_PROJECT_ROOT}/src/main.c
else
	echo "Warning: We detected that the files in your project does not match the Empty C template"
	echo "         The import script will abort to avoid removing any important work."
	exit 1
fi

mv ${WIND_PROJECT_ROOT}/${EXAMPLE_NAME}/Makefile.app ${WIND_PROJECT_ROOT}/Makefile.app
mv ${WIND_PROJECT_ROOT}/${EXAMPLE_NAME}/prj.mdef ${WIND_PROJECT_ROOT}/prj.mdef
mv ${WIND_PROJECT_ROOT}/${EXAMPLE_NAME}/README.md ${WIND_PROJECT_ROOT}/README.md

mv ${WIND_PROJECT_ROOT}/${EXAMPLE_NAME}/src/* ${WIND_PROJECT_ROOT}/src/
rmdir ${WIND_PROJECT_ROOT}/${EXAMPLE_NAME}/src
rm ${WIND_PROJECT_ROOT}/${EXAMPLE_NAME}/setup.sh
rm -rf ${WIND_PROJECT_ROOT}/${EXAMPLE_NAME}
exit 0
