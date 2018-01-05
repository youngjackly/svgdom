TEMPLATE = lib

TARGET = svgdom

CONFIG += staticlib c++11

HEADERS += \
    svgdom/elements/AspectRatioed.hpp \
    svgdom/elements/Container.hpp \
    svgdom/elements/CoordinateUnits.hpp \
    svgdom/elements/Element.hpp \
    svgdom/elements/Filter.hpp \
    svgdom/elements/Gradients.hpp \
    svgdom/elements/ImageElement.hpp \
    svgdom/elements/Rectangle.hpp \
    svgdom/elements/Referencing.hpp \
    svgdom/elements/Shapes.hpp \
    svgdom/elements/Structurals.hpp \
    svgdom/elements/Styleable.hpp \
    svgdom/elements/Transformable.hpp \
    svgdom/elements/ViewBoxed.hpp \
    svgdom/Cloner.hpp \
    svgdom/config.hpp \
    svgdom/dom.hpp \
    svgdom/Exc.hpp \
    svgdom/Finder.hpp \
    svgdom/Length.hpp \
    svgdom/Parser.hxx \
    svgdom/StreamWriter.hpp \
    svgdom/StyleStack.hpp \
    svgdom/util.hxx \
    svgdom/Visitor.hpp

SOURCES += \
    svgdom/elements/AspectRatioed.cpp \
    svgdom/elements/Element.cpp \
    svgdom/elements/Filter.cpp \
    svgdom/elements/Gradients.cpp \
    svgdom/elements/ImageElement.cpp \
    svgdom/elements/Rectangle.cpp \
    svgdom/elements/Referencing.cpp \
    svgdom/elements/Shapes.cpp \
    svgdom/elements/Structurals.cpp \
    svgdom/elements/Styleable.cpp \
    svgdom/elements/Transformable.cpp \
    svgdom/elements/ViewBoxed.cpp \
    svgdom/Cloner.cpp \
    svgdom/dom.cpp \
    svgdom/Finder.cpp \
    svgdom/Length.cpp \
    svgdom/Parser.cpp \
    svgdom/StreamWriter.cpp \
    svgdom/StyleStack.cpp \
    svgdom/util.cpp \
    svgdom/Visitor.cpp



