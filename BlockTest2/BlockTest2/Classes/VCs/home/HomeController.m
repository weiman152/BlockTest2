//
//  HomeController.m
//  BlockTest2
//
//  Created by wenhuanhuan on 2020/9/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "HomeController.h"

@interface HomeController ()

@end

@implementation HomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

+(instancetype)instance {
    HomeController *home = [HomeController instanceWithBoard:@"Home" identifer:@"HomeController"];
    return home;
}


@end
