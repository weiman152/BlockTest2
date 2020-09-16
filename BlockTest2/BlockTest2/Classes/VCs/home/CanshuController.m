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

- (IBAction)test:(id)sender {
    //调用myTest方法
    NSString * my = [self myTest:^NSInteger(NSInteger n) {
        NSLog(@"%ld 的正整数是：",n);
        return n>0?n:(-n);
    }];
    NSLog(@"%@", my);
}

- (IBAction)test2:(id)sender {
    
}

- (IBAction)test3:(id)sender {
    
}

#pragma mark-functions
/**
 myTest方法：
 有参数，有返回值的block作为函数myTest的参数。
 block的返回值是NSInteger.
 myTest函数的返回值是NSString * 。
 */
-(NSString *)myTest:(NSInteger(^)(NSInteger))block{
    NSInteger r = block(-10);
    NSString * result = [NSString stringWithFormat:@"*** %ld ***", r];
    return result;
}
/**
 yourTest方法：
 有参数，无返回值的block作为函数yourTest的参数。
 block实现两个doublek类型的数字的和。
 */
-(void)yourTest:(void(^)(double, double))block{
    
}


@end
