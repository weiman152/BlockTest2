//
//  SceneDelegate+Setup.m
//  BlockTest2
//
//  Created by wenhuanhuan on 2020/9/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "SceneDelegate+Setup.h"
#import "WMTabbarController.h"
#import "WMNavgationController.h"
#import "HomeController.h"
#import "OtherController.h"
#import "MineController.h"

@implementation SceneDelegate (Setup)

-(void)setupWithScene:(UIScene *)scene{
    UIWindowScene * winScene = (UIWindowScene *)scene;
    self.window = [[UIWindow alloc] initWithWindowScene:winScene];
    self.window.frame = winScene.coordinateSpace.bounds;
    WMTabbarController * tabbar = [[WMTabbarController alloc] init];
    tabbar.viewControllers = [self setUpVCs];
    self.window.rootViewController = tabbar;
    [self.window makeKeyAndVisible];
}

-(NSArray *)setUpVCs {
    HomeController * home = [[HomeController alloc] init];
    WMNavgationController * homeNav = [[WMNavgationController alloc] initWithRootViewController:home];
    
    OtherController * other = [OtherController instance];
    WMNavgationController * otherNav = [[WMNavgationController alloc] initWithRootViewController:other];

    MineController * mine = [MineController instance];
    WMNavgationController * mineNav = [[WMNavgationController alloc] initWithRootViewController:mine];
    
    return @[homeNav,mine,other];
}

@end
