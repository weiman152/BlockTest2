//
//  OtherController.m
//  BlockTest2
//
//  Created by wenhuanhuan on 2020/9/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "OtherController.h"

@interface OtherController ()

@end

@implementation OtherController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

+(instancetype)instance {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"other" bundle:0];
    OtherController *other = [storyboard instantiateViewControllerWithIdentifier:@"OtherController"];
    return other;
}

@end
