//
//  DeviceListViewController.h
//  DeviceList
//
//  Created by zhuangqiuxiong on 16/3/22.
//  Copyright © 2016年 tplink. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TPLineBandView.h"

@interface DeviceListViewController : UIViewController <TPLineBandViewDelegate>

@property (nonatomic, strong) NSMutableArray *deviceList;

@end
