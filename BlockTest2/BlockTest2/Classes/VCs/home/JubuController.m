//
//  JubuController.m
//  BlockTest2
//
//  Created by wenhuanhuan on 2020/9/15.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "JubuController.h"

@interface JubuController ()

@end

@implementation JubuController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+(id)instance{
    JubuController * jubu = [JubuController instanceWithBoard:@"Home" identifer:@"JubuController"];
    return jubu;
}

@end
