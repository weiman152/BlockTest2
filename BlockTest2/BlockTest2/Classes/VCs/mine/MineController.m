//
//  MineController.m
//  BlockTest2
//
//  Created by wenhuanhuan on 2020/9/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "MineController.h"

@interface MineController ()

@end

@implementation MineController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+(instancetype)instance {
    MineController *mine = [MineController instanceWithStoryBoard:@"mine"];
    return mine;
}

@end
