//
//  DFLModel.h
//  DynamicCellHeight
//
//  Created by 杭州移领 on 16/12/30.
//  Copyright © 2016年 DFL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface DFLModel : NSObject
@property (nonatomic , strong) NSString *icon;

@property (nonatomic , strong) NSString *name;

@property (nonatomic , strong) NSString *shopImageView;

@property (nonatomic , strong) NSString *message; //可有可无

@property (nonatomic , strong) NSString *comment; //可有可无

@property (nonatomic , assign) CGFloat cellHeight;

@property (nonatomic ,assign) BOOL isExpandMessage;

@property (nonatomic ,assign) BOOL isExpandCommment;
- (instancetype)initWithDic:(NSDictionary *)dic;

@end
