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
    [self setup];
}

+(id)instance{
    JubuController * jubu = [JubuController instanceWithBoard:@"Home" identifer:@"JubuController"];
    return jubu;
}

-(void)setup{
    //无参数，无返回值的block
    void (^block1)(void) = ^{
        NSLog(@"这是一个block，无参数，无返回值！");
    };
    //全局区：<__NSGlobalBlock__: 0x101ac80c0>
    NSLog(@"%@",block1);
    block1();
    
    //有参数，无返回值的block
    void (^block2)(NSInteger) = ^(NSInteger a){
        NSLog(@"有参数的block，参数是：a=%ld",a);
    };
    NSLog(@"%@",block2);
    block2(10);
    
    //案例，输出一个整数的相反数
    void (^block3)(NSInteger) = ^(NSInteger a){
        NSInteger b = -a;
        NSLog(@"%ld的相反数是%ld",a,b);
    };
    NSLog(@"%@",block3);
    block3(-2);
    
    //有参数，有返回值的block
    NSInteger (^block4)(NSInteger, NSInteger) = ^NSInteger (NSInteger a, NSInteger b){
        NSLog(@"(%ld)+(%ld)=",a,b);
        return a+b;
    };
    NSInteger h = block4(10, -5);
    NSLog(@"%ld",h);
    
    //案例，判断一个数组中是否有重复的元素
    BOOL (^block5)(NSArray *) = ^ BOOL (NSArray * array){
        NSSet * set = [NSSet setWithArray:array];
        NSLog(@"set: %ld, array: %ld",set.count, array.count);
        if(set.count < array.count){
            return NO;
        }else{
            return YES;
        }
    };
    NSArray *arr = @[@1,@2,@3,@1];
    if(block5(arr)){
        NSLog(@"数组中没有重复的元素");
    }else{
        NSLog(@"数组中有重复的元素");
    }
    
    //block赋值
    NSInteger (^block6)(NSInteger, NSInteger) = block4;
    NSInteger h2 = block6(3,9);
    NSLog(@"%ld",h2);
}



@end
