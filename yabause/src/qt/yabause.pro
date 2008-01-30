###########################################################################################
##		Created using Monkey Studio v1.8.1.0
##
##	Author    : Filipe AZEVEDO aka Nox P@sNox <pasnox@gmail.com>
##	Project   : yabause
##	FileName  : yabause.pro
##	Date      : 2008-01-28T23:22:47
##	License   : GPL
##	Comment   : Creating using Monkey Studio RAD
##	Home Page   : http://www.monkeystudio.org
##
##	This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
##	WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
##
###########################################################################################

TEMPLATE	= app
LANGUAGE	= Qt4/C++
TARGET	= yabause
CONFIG	+= debug_and_release
QT	+= opengl
DEFINES	+= STDC_HEADERS=1 HAVE_SYS_TYPES_H=1 HAVE_SYS_STAT_H=1 DHAVE_STDLIB_H=1 HAVE_STRING_H=1 HAVE_MEMORY_H=1 HAVE_STRINGS_H=1 HAVE_INTTYPES_H=1 HAVE_STDINT_H=1 HAVE_UNISTD_H=1 HAVE_LIBSDL=1 HAVE_LIBGL=1 HAVE_C99_VARIADIC_MACROS=1 HAVE_C68K=1 DEBUG=1
LIBS	+= -L../ -lyabause -lSDL

BUILD_PATH	= ./build
BUILDER	= GNUMake
COMPILER	= G++
EXECUTE_RELEASE	= yabause
EXECUTE_DEBUG	= yabause_debug

CONFIG(debug, debug|release) {
	#Debug
	CONFIG	+= console
	unix:TARGET	= $$join(TARGET,,,_debug)
	else:TARGET	= $$join(TARGET,,,d)
	unix:OBJECTS_DIR	= $${BUILD_PATH}/debug/.obj/unix
	win32:OBJECTS_DIR	= $${BUILD_PATH}/debug/.obj/win32
	mac:OBJECTS_DIR	= $${BUILD_PATH}/debug/.obj/mac
	UI_DIR	= $${BUILD_PATH}/debug/.ui
	MOC_DIR	= $${BUILD_PATH}/debug/.moc
	RCC_DIR	= $${BUILD_PATH}/debug/.rcc
} else {
	#Release
	unix:OBJECTS_DIR	= $${BUILD_PATH}/release/.obj/unix
	win32:OBJECTS_DIR	= $${BUILD_PATH}/release/.obj/win32
	mac:OBJECTS_DIR	= $${BUILD_PATH}/release/.obj/mac
	UI_DIR	= $${BUILD_PATH}/release/.ui
	MOC_DIR	= $${BUILD_PATH}/release/.moc
	RCC_DIR	= $${BUILD_PATH}/release/.rcc
}

HEADERS	+= qt_yabause.h \
	ui/UIYabause.h \
	YabauseGL.h

SOURCES	+= qt_yabause.cpp \
	main.cpp \
	ui/UIYabause.cpp \
	YabauseGL.cpp
FORMS	+= ui/UIYabause.ui \
	ui/UISettings.ui
