//  weibo: http://weibo.com/xiaoqing28
//  blog:  http://www.alonemonkey.com
//
//  NGAHookDylib.m
//  NGAHookDylib
//
//  Created by wzq on 2018/9/27.
//  Copyright (c) 2018 wzq. All rights reserved.
//

#import "NGAHookDylib.h"
#import <CaptainHook/CaptainHook.h>
#import <UIKit/UIKit.h>
#import <Cycript/Cycript.h>
#import <MDCycriptManager.h>

CHDeclareClass(HomePageViewController)
CHOptimizedMethod0(self, void, HomePageViewController, viewDidLoad){
    CHSuper0(HomePageViewController, viewDidLoad);
    UIViewController *VC = (UIViewController*) self;
    [VC.tabBarController setSelectedIndex:VC.tabBarController.viewControllers.count-1];
}

CHDeclareClass(NGALaunchManager)
CHMethod0(id, NGALaunchManager, showLaunchAD){
    return NULL;
}
CHMethod0(id, NGALaunchManager, EnterForegroundShowAD){
    return NULL;
}
CHMethod0(id, NGALaunchManager, doNewsAdvertisingRegist){
    return NULL;
}
CHMethod0(id, NGALaunchManager, loadDonewsFullScreenAdvertising){
    return NULL;
}

CHConstructor{
    
    CHLoadLateClass(NGALaunchManager);
    CHHook0(NGALaunchManager, showLaunchAD);
    CHHook0(NGALaunchManager, EnterForegroundShowAD);
    CHHook0(NGALaunchManager, doNewsAdvertisingRegist);
    CHHook0(NGALaunchManager, loadDonewsFullScreenAdvertising);


    CHLoadLateClass(HomePageViewController);
    CHHook0(HomePageViewController, viewDidLoad);
    
}
