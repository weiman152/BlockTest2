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

+(id)instanceWithBoard:(NSString *)name identifer:(NSString *)identifer{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:name bundle:0];
    BaseViewController * myVC = [storyboard instantiateViewControllerWithIdentifier:identifer];
    return myVC;
}

@end
