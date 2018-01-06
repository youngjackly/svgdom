#ifndef HELLOWORLD_SCENE_H
#define HELLOWORLD_SCENE_H
#include "cocos2d.h"

class HelloWorldScene : public cocos2d::Layer
{
public:
    HelloWorldScene();
    // Here's a difference. Method 'init' in cocos2d-x returns bool, instead of returning 'id' in cocos2d-iphone
    virtual bool init() override;

    // there's no 'id' in cpp, so we recommend returning the class instance pointer
    static cocos2d::Scene* scene();
       
    // implement the "static node()" method manually
    CREATE_FUNC(HelloWorldScene)

    void update(float) override;

    void changeLayer();
};

#endif // HELLO3D_SCENE_H
