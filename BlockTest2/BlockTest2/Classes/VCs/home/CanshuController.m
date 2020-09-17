//
//  CanshuController.m
//  BlockTest2
//
//  Created by wenhuanhuan on 2020/9/15.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "CanshuController.h"

typedef void (^SuccessBlock)(NSDictionary *);
typedef void (^FailBlock)(int, NSString *);

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
    [self yourTest:^(double a, double b) {
        double r = a + b;
        NSLog(@"a+b=%f",r);
    }];
}

- (IBAction)test3:(id)sender {
    [self loadDataSuccess:^(NSDictionary * json) {
        NSLog(@"请求成功，json：%@",json);
    } fail:^(int code, NSString * msg) {
        NSLog(@"请求失败，code=%d, msg:%@",code,msg);
    }];
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
    NSLog(@"-----yourTest-----");
    block(2.1,3.5);
}

-(void)loadDataSuccess:(SuccessBlock)success fail:(FailBlock)fail{
    NSDictionary * json = @{
        @"num":@1,
        @"name":@"小明",
        @"age":@18,
        @"phone":@"12345678922",
        @"email":@"6666666@163.com"
    };
    int code = 304;
    if (code==200) {
        success(json);
    }else{
        fail(code,@"出错啦");
    }
}


@end
