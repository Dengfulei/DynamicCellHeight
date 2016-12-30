//
//  DFLTableViewCell.m
//  DynamicCellHeight
//
//  Created by 杭州移领 on 16/12/30.
//  Copyright © 2016年 DFL. All rights reserved.
//

#import "DFLTableViewCell.h"
#import "Masonry.h"
@interface DFLTableViewCell ()

@property (nonatomic , strong) UIImageView *icon;

@property (nonatomic , strong) UILabel *nameLabel;

@property (nonatomic , strong) UIImageView *shopImageView;

@property (nonatomic , strong) UILabel *messageLabel; //可有可无

@property (nonatomic , strong) UILabel *commentLabel; //可有可无


@end

@implementation DFLTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
       
        [self setUI];
    }
    return self;
}

- (void)setUI {
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.icon = [UIImageView new];
    self.icon.layer.masksToBounds = YES;
    self.icon.layer.cornerRadius = 30;

    self.icon.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:self.icon];
    
    self.nameLabel = [UILabel new];
    self.nameLabel.text = @"匿名用户";
    self.nameLabel.textColor = [UIColor blackColor];
    [self.contentView addSubview:self.nameLabel];
    
    self.shopImageView = [UIImageView new];
    self.shopImageView.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:self.shopImageView];
    
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickMessageLabel:)];
    self.messageLabel = [UILabel new];
    self.messageLabel.userInteractionEnabled = YES;
    [self.messageLabel addGestureRecognizer:gesture];
    self.messageLabel.backgroundColor = [UIColor yellowColor];
    [self.contentView addSubview:self.messageLabel];
    
     UITapGestureRecognizer *gesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickCommentLabel:)];
    self.commentLabel = [UILabel new];
    self.commentLabel.userInteractionEnabled = YES;
    [self.commentLabel addGestureRecognizer:gesture1];
    self.commentLabel.backgroundColor = [UIColor blueColor];
    [self.contentView addSubview:self.commentLabel];
    
    UIView *contentView = self.contentView;
    [self.icon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(contentView).offset(10);
        make.size.mas_equalTo(CGSizeMake(60, 60));
    }];
    
    
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.icon.mas_right).offset(10);
        make.centerY.mas_equalTo(self.icon.mas_centerY);
    }];
    
    [self.shopImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.icon.mas_bottom).offset(10);
        make.left.equalTo(contentView).offset(10);
        make.right.equalTo(contentView).offset(-10);
        make.height.equalTo(@100);
    }];
    
    [self.messageLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.shopImageView.mas_bottom).offset(10);
        make.left.equalTo(self.shopImageView).offset(10);
        make.right.equalTo(self.shopImageView).offset(-10);
    }];

    [self.commentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.messageLabel.mas_bottom).offset(10);
        make.left.right.equalTo(self.messageLabel).offset(0);
    }];
    
}

- (void)setModel:(DFLModel *)model {
    
    _model = model;
    if (_model.isExpandMessage) {
        self.messageLabel.numberOfLines = 0;
    } else {
        self.messageLabel.numberOfLines = 2;
    }
    
    if (_model.isExpandCommment) {
        self.commentLabel.numberOfLines = 0;
    } else {
        self.commentLabel.numberOfLines = 2;
    }
    self.icon.image = [UIImage imageNamed:_model.icon];
    self.nameLabel.text = _model.name;
    self.shopImageView.image = [UIImage imageNamed:_model.shopImageView];
    self.messageLabel.text = _model.message;
    self.commentLabel.text = _model.comment;
    [self setNeedsUpdateConstraints];
    [self updateConstraintsIfNeeded];
}
- (void)updateConstraints {
    
    [super updateConstraints];
    [self.messageLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        if (_model.message.length == 0 || !_model.message) {
            make.top.equalTo(self.shopImageView.mas_bottom).offset(0);

        } else {
             make.top.equalTo(self.shopImageView.mas_bottom).offset(10);
        }
    }];

    [self.commentLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        if (!_model.comment || _model.comment.length == 0) {
            make.top.equalTo(self.messageLabel.mas_bottom).offset(0);
        } else {
            make.top.equalTo(self.messageLabel.mas_bottom).offset(10);
        }
    }];
    
}


- (CGFloat)getCellHeigth:(DFLModel *)model {
    //调用setter方法 ，给控件赋值
    self.model = model;
    //立即更新frame
    [self layoutIfNeeded];
    //获取cell高度
    NSLog(@"%f",CGRectGetMaxY(self.commentLabel.frame));
    return CGRectGetMaxY(self.commentLabel.frame);
}


- (void)clickMessageLabel:(UITapGestureRecognizer *)sender {
    _model.isExpandMessage = !_model.isExpandMessage;
#warning  注意在点击的时候要及时更新_model.cellHeight的值；
    _model.cellHeight =  [self getCellHeigth:self.model];
    if (self.clickMessageCall) {
        self.clickMessageCall(sender.view);
    }
}


- (void)clickCommentLabel:(UITapGestureRecognizer *)sender {
    _model.isExpandCommment = !_model.isExpandCommment;
#warning  注意在点击的时候要及时更新_model.cellHeight的值；
    _model.cellHeight = [self getCellHeigth:_model];
    if (self.clickCommentCall) {
        self.clickCommentCall(sender.view);
    }

    
}

@end
