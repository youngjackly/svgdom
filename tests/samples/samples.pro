TEMPLATE = app
CONFIG -= qt
CONFIG += c++11
CONFIG += object_parallel_to_source

SOURCES += main.cpp

unix:!macx: LIBS += -L$$OUT_PWD/../../src/ -lsvgdom

INCLUDEPATH += $$PWD/../../src
DEPENDPATH += $$PWD/../../src

unix:!macx: PRE_TARGETDEPS += $$OUT_PWD/../../src/libsvgdom.a
