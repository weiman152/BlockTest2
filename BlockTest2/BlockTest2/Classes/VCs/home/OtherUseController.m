//
//  OtherUseController.m
//  BlockTest2
//
//  Created by wenhuanhuan on 2020/9/15.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "OtherUseController.h"

@interface OtherUseController ()

@end

@implementation OtherUseController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

+(id)instance{
    OtherUseController * vc = [OtherUseController instanceWithStoryBoard:@"Home"];
    return vc;
}

@end
