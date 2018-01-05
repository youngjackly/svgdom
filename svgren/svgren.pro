TEMPLATE = app
CONFIG -= qt
CONFIG += c++11
CONFIG += object_parallel_to_source

DEFINES += DEBUG

unix:!macx: LIBS += -L$$OUT_PWD/../src/ -lsvgdom
INCLUDEPATH += $$PWD/../src
DEPENDPATH += $$PWD/../src
unix:!macx: PRE_TARGETDEPS += $$OUT_PWD/../src/libsvgdom.a

LIBS += -lcairo -lpng

HEADERS += \
    CanvasRegion.hxx \
    config.hpp \
    FilterApplyer.hxx \
    render.hpp \
    Renderer.hxx \
    Surface.hxx \
    util.hxx

SOURCES += \
    CanvasRegion.cpp \
    FilterApplyer.cpp \
    render.cpp \
    Renderer.cpp \
    Surface.cpp \
    util.cpp \
    checksvg.cpp
