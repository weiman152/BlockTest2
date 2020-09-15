//
//  HomeController.m
//  BlockTest2
//
//  Created by wenhuanhuan on 2020/9/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import "HomeController.h"
#import "JubuController.h"
#import "QuanjuController.h"
#import "CanshuController.h"
#import "FanhuizhiController.h"
#import "OtherUseController.h"

@interface HomeController ()

@end

@implementation HomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

+(instancetype)instance {
    HomeController *home = [HomeController instanceWithBoard:@"Home" identifer:@"HomeController"];
    return home;
}

- (IBAction)jubuAction:(id)sender {
    JubuController * jubu = [JubuController instance];
    [self.navigationController pushViewController:jubu animated:YES];
}

- (IBAction)quanjuAction:(id)sender {
    QuanjuController * vc = [QuanjuController instance];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)canshuAction:(id)sender {
    CanshuController * vc = [CanshuController instance];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)fanhuiAction:(id)sender {
    FanhuizhiController * vc = [FanhuizhiController instance];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)userAction:(id)sender {
    OtherUseController * vc = [OtherUseController instance];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
