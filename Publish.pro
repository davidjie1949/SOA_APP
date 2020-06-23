#-------------------------------------------------
#
# Project created by QtCreator 2020-06-18T09:04:26
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Publish
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    TVF_To_DXP.pb.cc \
    paho_test_utils.cpp \
    TVF_To_DXP_info.pb.cc \
    soa-test-utils.cpp \
    soa-publish-test.cpp \
    #soa-subscribe-test.cpp

HEADERS += \
        mainwindow.h \
    TVF_To_DXP.pb.h \
    paho_test_utils.h \
    TVF_To_DXP_info.pb.h \
    soa-test-utils.hpp

FORMS += \
        mainwindow.ui

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/release/ -lprotobuf
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/debug/ -lprotobuf
else:unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lprotobuf

INCLUDEPATH += $$PWD/../../../../usr/local/include
DEPENDPATH += $$PWD/../../../../usr/local/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/release/ -lpaho-mqtt3c
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/debug/ -lpaho-mqtt3c
else:unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lpaho-mqtt3c

INCLUDEPATH += $$PWD/../../../../usr/local/include
DEPENDPATH += $$PWD/../../../../usr/local/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/release/ -lsoaframework
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/debug/ -lsoaframework
else:unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lsoaframework

INCLUDEPATH += $$PWD/../../../../usr/local/include/soa/framework
DEPENDPATH += $$PWD/../../../../usr/local/include/soa/framework

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/release/ -lbmetrics
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/debug/ -lbmetrics
else:unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lbmetrics

INCLUDEPATH += $$PWD/../../../../usr/local/include
DEPENDPATH += $$PWD/../../../../usr/local/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/release/ -lfciclient
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/debug/ -lfciclient
else:unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lfciclient

INCLUDEPATH += $$PWD/../../../../usr/local/include/libfciclient
DEPENDPATH += $$PWD/../../../../usr/local/include/libfciclient

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/release/ -lfciidl
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/debug/ -lfciidl
else:unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lfciidl

INCLUDEPATH += $$PWD/../../../../usr/local/include/fci/idl
DEPENDPATH += $$PWD/../../../../usr/local/include/fci/idl

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/release/ -lftcpidl
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/debug/ -lftcpidl
else:unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lftcpidl

INCLUDEPATH += $$PWD/../../../../usr/local/include/ftcp/idl
DEPENDPATH += $$PWD/../../../../usr/local/include/ftcp/idl

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/release/ -lipclite
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/debug/ -lipclite
else:unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lipclite

INCLUDEPATH += $$PWD/../../../../usr/local/include/soa/ipc
DEPENDPATH += $$PWD/../../../../usr/local/include/soa/ipc

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/release/ -lipptclient
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/debug/ -lipptclient
else:unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lipptclient

INCLUDEPATH += $$PWD/../../../../usr/local/include/libipptclient
DEPENDPATH += $$PWD/../../../../usr/local/include/libipptclient

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/release/ -lsoaidl
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/debug/ -lsoaidl
else:unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lsoaidl

INCLUDEPATH += $$PWD/../../../../usr/local/include/soa/idl
DEPENDPATH += $$PWD/../../../../usr/local/include/soa/idl

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/release/ -ltelemetry
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/debug/ -ltelemetry
else:unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -ltelemetry

INCLUDEPATH += $$PWD/../../../../usr/local/include
DEPENDPATH += $$PWD/../../../../usr/local/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/release/ -lservicemanagerliteidl
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/debug/ -lservicemanagerliteidl
else:unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lservicemanagerliteidl

INCLUDEPATH += $$PWD/../../../../usr/local/include/soa/servicemanager
DEPENDPATH += $$PWD/../../../../usr/local/include/soa/servicemanager

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/release/ -lvim
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/debug/ -lvim
else:unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lvim

INCLUDEPATH += $$PWD/../../../../usr/local/include/vim
DEPENDPATH += $$PWD/../../../../usr/local/include/vim

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/release/ -lvimidl
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/debug/ -lvimidl
else:unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lvimidl

INCLUDEPATH += $$PWD/../../../../usr/local/include/vim/idl
DEPENDPATH += $$PWD/../../../../usr/local/include/vim/idl

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/release/ -lvnm
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/debug/ -lvnm
else:unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lvnm

INCLUDEPATH += $$PWD/../../../../usr/local/include
DEPENDPATH += $$PWD/../../../../usr/local/include

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/release/ -lvnmipc
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../../usr/local/lib/debug/ -lvnmipc
else:unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lvnmipc

INCLUDEPATH += $$PWD/../../../../usr/local/include
DEPENDPATH += $$PWD/../../../../usr/local/include
