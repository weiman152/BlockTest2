//
//  BaseViewController.h
//  BlockTest2
//
//  Created by wenhuanhuan on 2020/9/14.
//  Copyright © 2020 weiman. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewController : UIViewController

+(id)instanceWithBoard:(NSString *)name identifer:(NSString *)identifer;

@end

NS_ASSUME_NONNULL_END
