ccflags-y += ${PROJECTINCLUDE}
ccflags-y += -I$(srctree)/drivers
ccflags-y += -I${PROJECT_BASE}/arduino -include ${PROJECT_BASE}/arduino/arduino.h

#
# This will pull in all source files present in the src directory
#
main_SOURCES = $(patsubst $(SOURCE_DIR)/%,%,$(wildcard $(SOURCE_DIR)/*.c))
main_OBJECTS = $(patsubst %.c, %.o, $(main_SOURCES))

obj-y += $(main_OBJECTS)