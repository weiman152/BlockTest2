//
//  FanhuizhiController.m
//  BlockTest2
//
//  Created by wenhuanhuan on 2020/9/15.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "FanhuizhiController.h"

@interface FanhuizhiController ()

@end

@implementation FanhuizhiController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

+(id)instance{
    FanhuizhiController * vc = [FanhuizhiController instanceWithBoard:@"Home" identifer:@"FanhuizhiController"];
    return vc;
}
@end
