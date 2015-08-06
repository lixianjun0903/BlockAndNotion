//
//  secondViewController.h
//  first
//
//  Created by 李李贤军 on 15/8/5.
//  Copyright (c) 2015年 XH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondViewController : UIViewController
@property(nonatomic,copy)void(^MyBlock)(NSString * str);
@end
