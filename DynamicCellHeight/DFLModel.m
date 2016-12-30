//
//  DFLModel.m
//  DynamicCellHeight
//
//  Created by 杭州移领 on 16/12/30.
//  Copyright © 2016年 DFL. All rights reserved.
//

#import "DFLModel.h"

@implementation DFLModel

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
}

- (instancetype)initWithDic:(NSDictionary *)dic {
    
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}

@end
