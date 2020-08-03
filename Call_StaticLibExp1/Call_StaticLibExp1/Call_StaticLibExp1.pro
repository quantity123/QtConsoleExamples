QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    staticlib_exp1.h

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../LibraryProjects/StaticLib_exp1/build-StaticLib_exp1-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/release/ -lStaticLib_exp1
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../LibraryProjects/StaticLib_exp1/build-StaticLib_exp1-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/debug/ -lStaticLib_exp1

INCLUDEPATH += $$PWD/../../../LibraryProjects/StaticLib_exp1/build-StaticLib_exp1-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/debug
DEPENDPATH += $$PWD/../../../LibraryProjects/StaticLib_exp1/build-StaticLib_exp1-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/debug

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../LibraryProjects/StaticLib_exp1/build-StaticLib_exp1-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/release/libStaticLib_exp1.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../LibraryProjects/StaticLib_exp1/build-StaticLib_exp1-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/debug/libStaticLib_exp1.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../../LibraryProjects/StaticLib_exp1/build-StaticLib_exp1-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/release/StaticLib_exp1.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../../LibraryProjects/StaticLib_exp1/build-StaticLib_exp1-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/debug/StaticLib_exp1.lib
