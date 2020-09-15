//
//  QuanjuController.m
//  BlockTest2
//
//  Created by wenhuanhuan on 2020/9/15.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "QuanjuController.h"

@interface QuanjuController ()

@end

@implementation QuanjuController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

+(id)instance{
    QuanjuController * vc = [QuanjuController instanceWithBoard:@"Home" identifer:@"QuanjuController"];
    return vc;
}


@end
