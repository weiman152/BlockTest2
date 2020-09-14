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
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"mine" bundle:nil];
    MineController *mine = [storyboard instantiateViewControllerWithIdentifier:@"MineController"];
    return mine;
}

@end
