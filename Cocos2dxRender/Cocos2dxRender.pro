TEMPLATE = app
CONFIG -= qt
CONFIG += c++11
CONFIG += object_parallel_to_source

DEFINES += DEBUG

DEFINES += LINUX
DEFINES += COCOS2D_DEBUG=1
DEFINES += IS_EDTOR=0
QMAKE_CXXFLAGS += -Wno-unused-parameter -Wno-unused-variable
PRECOMPILED_HEADER = stable.h


INCLUDEPATH += src/Classes
INCLUDEPATH += $$(COCOS_ENGINE_SRC)/cocos
INCLUDEPATH += $$(COCOS_ENGINE_SRC)/cocos/base
INCLUDEPATH += $$(COCOS_ENGINE_SRC)/cocos/platform
INCLUDEPATH += $$(COCOS_ENGINE_SRC)/cocos3d
INCLUDEPATH += $$(COCOS_ENGINE_SRC)/external
INCLUDEPATH += $$(COCOS_ENGINE_SRC)/external/bullet
INCLUDEPATH += /usr/include/GLFW

#build-CocosEngine-Qt_5_5_1_gcc_64-Debug
#message($$OUT_PWD)

message($$(COCOS_ENGINE_LIB))

LIBS += $$(COCOS_ENGINE_LIB)/libCocosEngine.a
unix:!macx: PRE_TARGETDEPS += $$(COCOS_ENGINE_LIB)/libCocosEngine.a

LIBS += -lpng -ljpeg -lz -lGLEW -lfontconfig -ldl -lfreetype -lglfw


DISTFILES +=

message($$(FMOD_LIB))
unix:!macx: LIBS += -L$$(FMOD_LIB) -lfmodex64


unix:!macx: LIBS += -L$$OUT_PWD/../src/ -lsvgdom
INCLUDEPATH += $$PWD/../src
DEPENDPATH += $$PWD/../src
unix:!macx: PRE_TARGETDEPS += $$OUT_PWD/../src/libsvgdom.a

LIBS += -lcairo -lpng -ljpeg -lz -lGLEW -lfontconfig -ldl -lfreetype -lglfw -lpthread -lX11 -lGL

HEADERS += \
    Classes/Render/CanvasRegion.hxx \
    Classes/Render/config.hpp \
    Classes/Render/FilterApplyer.hxx \
    Classes/Render/render.hpp \
    Classes/Render/Renderer.hxx \
    Classes/Render/Surface.hxx \
    Classes/Render/util.hxx \
    Classes/AppDelegate.h \
    Classes/HelloWorldScene.h

SOURCES += \
    main.cpp \
    Classes/Render/CanvasRegion.cpp \
    Classes/Render/FilterApplyer.cpp \
    Classes/Render/render.cpp \
    Classes/Render/Renderer.cpp \
    Classes/Render/Surface.cpp \
    Classes/Render/util.cpp \
    Classes/AppDelegate.cpp \
    Classes/HelloWorldScene.cpp
