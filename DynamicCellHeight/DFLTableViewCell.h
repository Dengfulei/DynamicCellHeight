//
//  DFLTableViewCell.h
//  DynamicCellHeight
//
//  Created by 杭州移领 on 16/12/30.
//  Copyright © 2016年 DFL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DFLModel.h"
@interface DFLTableViewCell : UITableViewCell

@property (nonatomic , strong) DFLModel *model;

@property (nonatomic , strong) void (^clickMessageCall)(UIView *view);
@property (nonatomic , strong) void (^clickCommentCall)(UIView *view);

- (CGFloat)getCellHeigth:(DFLModel *)model;

@end
