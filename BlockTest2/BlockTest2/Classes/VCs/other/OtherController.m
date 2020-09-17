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
    OtherController *other = [OtherController instanceWithStoryBoard:@"other"];
    return other;
}

@end
