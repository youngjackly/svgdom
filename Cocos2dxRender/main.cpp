//============================================================================
// Name        : DecorationDemo.cpp
// Author      : ycy
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================
#include "Classes/AppDelegate.h"
#include "stdlib.h"

#ifdef LINUX
USING_NS_CC;

std::string uifile = "";

int main(int argc, char **argv)
{
    // create the application instance
    if(argc >= 2)
    {
        uifile = argv[1];
    }
    AppDelegate app;
    return Application::getInstance()->run();
}
#endif
#ifdef WIN32
#include "../Classes/AppDelegate.h"
#include "cocos2d.h"
#include <Windows.h>
#include <tchar.h>

// C RunTime Header Files
#include "CCStdC.h"
USING_NS_CC;
extern std::string s_resourcePath;
int APIENTRY _tWinMain(HINSTANCE hInstance,
    HINSTANCE hPrevInstance,
    LPTSTR    lpCmdLine,
    int       nCmdShow)
{
    UNREFERENCED_PARAMETER(hPrevInstance);
    UNREFERENCED_PARAMETER(lpCmdLine);
    FileUtils::getInstance()->setDefaultResourceRootPath("D:/WS20150921/SVN/Decoration/DecorationDemo/Resources");
    FileUtils::getInstance()->addSearchPath("D:/WS20150921/SVN/Decoration/DecorationDemo/Resources", true);
    FileUtils::getInstance()->addSearchPath("D:/WS20150921/SVN/Decoration/DecorationDemo/Resources/3d", false);
    // create the application instance
    AppDelegate app;
    return Application::getInstance()->run();
}
#endif
