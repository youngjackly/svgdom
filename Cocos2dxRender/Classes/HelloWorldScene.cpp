#include "HelloWorldScene.h"
#include <utki/Exc.hpp>
#include <kolme/Vector2.hpp>
#include <papki/FSFile.hpp>

#include "Render/render.hpp"

USING_NS_CC;
Scene *HelloWorldScene::scene()
{
    // 'scene' is an autorelease object
    Scene *scene = Scene::create();
    
    // 'layer' is an autorelease object
    HelloWorldScene *layer = HelloWorldScene::create();

    // add layer as a child to scene
    scene->addChild(layer);

    // return the scene
    return scene;
}

void HelloWorldScene::update(float)
{
}

void HelloWorldScene::changeLayer()
{
    auto dom = svgdom::load(papki::FSFile("machupicchu_collection_02.svg"));

    unsigned imWidth = 2000;
    unsigned imHeight = 2000;
    auto img = svgren::render(*dom, imWidth, imHeight);
    Image* cimg = new Image();
    cimg->initWithRawData((unsigned char*)&img[0], img.size()*4, imWidth, imHeight, 8);
    Texture2D* text = new Texture2D();
    text->initWithImage(cimg);
    Sprite* s = Sprite::create();
    s->initWithTexture(text);
    s->setPosition(20, 20);
    s->setAnchorPoint(Vec2(0, 0));
    this->addChild(s);
    delete cimg;
    text->release();
}

// on "init" you need to initialize your instance
HelloWorldScene::HelloWorldScene()
{
}

bool HelloWorldScene::init()
{
    //////////////////////////////
    // 1. super init first
    if ( !Layer::init() )
    {
        return false;
    }
    this->changeLayer();

    this->scheduleUpdate();
    return true;
}
