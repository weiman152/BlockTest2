//
//  WMNavgationController.m
//  BlockTest2
//
//  Created by wenhuanhuan on 2020/9/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "WMNavgationController.h"

@interface WMNavgationController ()

@end

@implementation WMNavgationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    NSString * vcName = NSStringFromClass([viewController class]);
    if ([vcName isEqualToString:@"HomeController"]||[vcName isEqualToString:@"MineController"]||[vcName isEqualToString:@"OtherController"]) {
        viewController.hidesBottomBarWhenPushed = NO;
    }else{
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

@end
