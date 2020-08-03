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

#-------------使用 添加库 来使用dll文件
#win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../LibraryProjects/Dll_QCore_Exp1/build-Dll_QCore_Exp1-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/release/ -lDll_QCore_Exp1
#else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../LibraryProjects/Dll_QCore_Exp1/build-Dll_QCore_Exp1-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/debug/ -lDll_QCore_Exp1

#INCLUDEPATH += $$PWD/../../../LibraryProjects/Dll_QCore_Exp1/build-Dll_QCore_Exp1-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/debug
#DEPENDPATH += $$PWD/../../../LibraryProjects/Dll_QCore_Exp1/build-Dll_QCore_Exp1-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/debug

#-------------只使用 .dll 文件, 把文件和exe放一个目录下面, -L指定文件所在目录, $$PWD指定当前目录, -l指定文件名
LIBS += -L$$PWD/../build-Call_DllQCoreExp1-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/debug/ -lDll_QCore_Exp1
INCLUDEPATH += $$PWD/../build-Call_DllQCoreExp1-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/debug
DEPENDPATH += $$PWD/../build-Call_DllQCoreExp1-Desktop_Qt_5_14_2_MinGW_64_bit-Debug/debug


HEADERS += \
    Dll_QCore_Exp1_global.h \
    dll_qcore_exp1.h
