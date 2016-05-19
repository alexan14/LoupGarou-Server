#-------------------------------------------------
#
# Project created by QtCreator 2016-02-11T11:00:47
#
#-------------------------------------------------

QT       += core gui \
            core gui network

CONFIG += console

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = LoupGarou_Server
TEMPLATE = app

CONFIG += console

SOURCES += sources/main.cpp\
    sources/client.cpp \
    sources/serverwindow.cpp \
    sources/parser.cpp \
    sources/command.cpp \
    sources/commandmanager.cpp \
    sources/server.cpp \
    sources/Commands/startcommand.cpp \
    sources/Commands/helpcommand.cpp \
    sources/Commands/stopcommand.cpp

HEADERS  += \
    includes/client.h \
    includes/serverwindow.h \
    includes/parser.h \
    includes/command.h \
    includes/commandmanager.h \
    includes/server.h \
    includes/Commands/startcommand.h \
    includes/Commands/helpcommand.h \
    includes/Commands/stopcommand.h

FORMS    += \
    serverwindow.ui

RC_ICONS = loupgarou.ico