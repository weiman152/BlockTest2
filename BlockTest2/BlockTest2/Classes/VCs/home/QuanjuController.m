//
//  QuanjuController.m
//  BlockTest2
//
//  Created by wenhuanhuan on 2020/9/15.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "QuanjuController.h"

//由于block的类型过长，一般作为全局属性的时候，会给它起一个别名
typedef NSString * (^PrintBlock)(NSString *);
typedef NSInteger (^SumBlock)(NSInteger);
typedef NSInteger (^JieCBlock)(NSInteger);

@interface QuanjuController ()
//有返回值，有参数的block
@property(nonatomic, copy)PrintBlock blockp;
@property(nonatomic, copy)SumBlock blocks;
@property(nonatomic, copy)JieCBlock blockj;
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;


@end

@implementation QuanjuController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setup];
}

+(id)instance{
    QuanjuController * vc = [QuanjuController instanceWithBoard:@"Home" identifer:@"QuanjuController"];
    return vc;
}

-(void)setup{
    
}

- (IBAction)test1:(id)sender {
    self.blockp = ^NSString *(NSString * str) {
        NSString * temp = [NSString stringWithFormat:@"值：%@, 地址：%p", str, str];
        return temp;
    };
    //调用,记得要判断，不然的话，如果block没实现，去调用它会造成崩溃
    if(self.blockp){
        NSString * str = self.blockp(@"你好呀");
        NSLog(@"%@", str);
    }
}

- (IBAction)test2:(id)sender {
    self.blocks = ^NSInteger(NSInteger n) {
        NSLog(@"1到 %ld 的和是：",n);
        NSInteger result = 0;
        while (n>0) {
            result += n;
            n--;
        }
        return result;
    };
    //调用
    if (self.blocks) {
        if(self.inputTextField.text.length>0){
            NSInteger n = self.inputTextField.text.integerValue;
            NSInteger sum = self.blocks(n);
            NSLog(@"%ld",sum);
            self.resultLabel.text = [NSString stringWithFormat:@"%ld", sum];
        }
    }
}

- (IBAction)test3:(id)sender {
    
}

@end
