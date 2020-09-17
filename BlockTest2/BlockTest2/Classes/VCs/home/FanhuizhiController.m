//
//  FanhuizhiController.m
//  BlockTest2
//
//  Created by wenhuanhuan on 2020/9/15.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "FanhuizhiController.h"

typedef void (^Test)(NSInteger);
typedef NSInteger (^Test2)(NSInteger);

@interface FanhuizhiController ()

@end

@implementation FanhuizhiController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

+(id)instance{
    FanhuizhiController * vc = [FanhuizhiController instanceWithStoryBoard:@"Home"];
    return vc;
}

- (IBAction)test1:(id)sender {
    Test tt = [self myTest1:(3)];
    tt(5);
    // test1: <__NSMallocBlock__: 0x60000292be70>
    NSLog(@"test1: %@", tt);
}

- (IBAction)test2:(id)sender {
    Test2 tt = [self myTest2:(66)];
    NSInteger ttr = tt(88);
    NSLog(@"test2： ttr=%ld",ttr);
}

#pragma mark - function
/**
 返回值是Test类型的Block，参数是一个整数的方法
 */
-(Test)myTest1:(NSInteger)a {
    __block NSInteger b = a;
    Test tBlock = ^void (NSInteger aa){
        NSLog(@"aa = %ld",aa);
        b = aa * a;
        NSLog(@"b0 = %ld", b);
    };
    NSLog(@"b1 = %ld", b);
    // <__NSMallocBlock__: 0x600001131f20>
    NSLog(@"%@", tBlock);
    return tBlock;
}

-(Test2)myTest2:(NSInteger)a {
    NSLog(@"我是方法的参数a=%ld",a);
    Test2 tBlock = ^NSInteger (NSInteger aa){
        NSLog(@"我是Block的参数，aa = %ld",aa);
        return aa*10;
    };
    return tBlock;
}


@end
