//
//  CanshuController.m
//  BlockTest2
//
//  Created by wenhuanhuan on 2020/9/15.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "CanshuController.h"

@interface CanshuController ()

@end

@implementation CanshuController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

+(id)instance{
    CanshuController * vc = [CanshuController instanceWithBoard:@"Home" identifer:@"CanshuController"];
    return vc;
}
@end
