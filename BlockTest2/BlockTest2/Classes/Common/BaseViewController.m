//
//  BaseViewController.m
//  BlockTest2
//
//  Created by wenhuanhuan on 2020/9/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+(id)instanceWithStoryBoard:(NSString *)name{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:name bundle:0];
    BaseViewController * myVC = [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([self class])];
    return myVC;
}

+(id)instance {
    return self;
}

@end
