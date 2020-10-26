#-------------------------------------------------
#
# Project created by QtCreator 2020-06-11T13:45:26
#
#-------------------------------------------------

QT       += widgets

TARGET = peony-qt-set-wallpaper
TEMPLATE = lib

DEFINES += PEONYQTSETWALLPAPER_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += debug link_pkgconfig plugin

PKGCONFIG += peony gsettings-qt

TRANSLATIONS = translations/peony-qt-set-wallpaper-extension_zh_CN.ts

DESTDIR += ../../testdir

SOURCES += \
    set-wallpaper-plugin.cpp

HEADERS += \
        set-wallpaper-plugin.h \
        peony-qt-set-wallpaper_global.h

unix {
    target.path = /usr/lib/peony-qt-extensions
    INSTALLS += target
}

RESOURCES += \
    peony-qt-set-wallpaper.qrc