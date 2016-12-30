//
//  ViewController.m
//  DynamicCellHeight
//
//  Created by 杭州移领 on 16/12/30.
//  Copyright © 2016年 DFL. All rights reserved.
//

#import "ViewController.h"
#import "DFLTableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic , strong) UITableView *tableView;
@property (nonatomic , strong) NSArray *modelArray;


@end

@implementation ViewController

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;//
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[DFLTableViewCell class] forCellReuseIdentifier:@"_cell"];

    }
    return _tableView;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dic0 = @{
                          @"icon" : @"QQ",
                          @"name" : @"匿名用户",
                          @"shopImageView" : @"个人中心1.jpg",
                          @"message" : @"30岁以前，",
                          @"comment" : @"这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决",
                          };
    NSDictionary *dic1 = @{
                           @"icon" : @"QQ",
                           @"name" : @"匿名用户",
                           @"shopImageView" : @"个人中心1.jpg",
                           @"message" : @"30岁以前，这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决",
                           @"comment" : @"",
                           };
    NSDictionary *dic2 = @{
                           @"icon" : @"QQ",
                           @"name" : @"匿名用户",
                           @"shopImageView" : @"个人中心1.jpg",
                           @"message" : @"",
                           @"comment" : @"这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决",
                           };
    NSDictionary *dic3 = @{
                           @"icon" : @"QQ",
                           @"name" : @"匿名用户",
                           @"shopImageView" : @"个人中心1.jpg",
                           @"message" : @"30岁以前，这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决",
                           @"comment" : @"这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决",
                           };
    NSDictionary *dic4 = @{
                           @"icon" : @"QQ",
                           @"name" : @"匿名用户",
                           @"shopImageView" : @"个人中心1.jpg",
                           @"message" : @"30岁以前，这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决",
                           @"comment" : @"这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决",
                           };
    NSDictionary *dic5 = @{
                           @"icon" : @"QQ",
                           @"name" : @"匿名用户",
                           @"shopImageView" : @"个人中心1.jpg",
                           @"message" : @"30岁以前，这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决",
                           @"comment" : @"这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决",
                           };
    NSDictionary *dic6 = @{
                           @"icon" : @"QQ",
                           @"name" : @"匿名用户",
                           @"shopImageView" : @"个人中心1.jpg",
                           @"message" : @"30岁以前，这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决",
                           @"comment" : @"这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决",
                           };
    NSDictionary *dic7 = @{
                           @"icon" : @"QQ",
                           @"name" : @"匿名用户",
                           @"shopImageView" : @"个人中心1.jpg",
                           @"message" : @"30岁以前，这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决",
                           @"comment" : @"",
                           };
    NSDictionary *dic8 = @{
                           @"icon" : @"QQ",
                           @"name" : @"匿名用户",
                           @"shopImageView" : @"个人中心1.jpg",
                           @"message" : @"30岁以前，这个时间段，应该是人学习和积累的时间段，这个时间段，就是努力学习的时间段。这个时间段，你一定要把时间花在解决问题的技能上。就是说，你一定要练就成的技能是——你能解决",
                           @"comment" : @"",
                           };
    NSDictionary *dic9 = @{
                           @"icon" : @"QQ",
                           @"name" : @"匿名用户",
                           @"shopImageView" : @"个人中心1.jpg",
                           @"message" : @"",
                           @"comment" : @"",
                           };
    NSArray *dicArray = @[dic0,dic1,dic2,dic3,dic4,dic5,dic6,dic7,dic8,dic9];
    NSMutableArray *array = [NSMutableArray array];
    for (NSInteger i = 0; i < dicArray.count; i++) {
        DFLModel *model = [[DFLModel alloc] initWithDic:dicArray[i]];
        [array addObject:model];
    }
    self.modelArray  = [array copy];
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    
    return  self.modelArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DFLModel *modle = self.modelArray[indexPath.row];
    DFLTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"_cell" forIndexPath:indexPath];
    cell.model = modle;
    cell.clickMessageCall = ^(UIView *view) {
        [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    };
    
    cell.clickCommentCall = ^(UIView *view) {
        [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    };
    
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DFLModel *model = self.modelArray[indexPath.row];
    if (!model.cellHeight) {
        // 第一次加载的时候后初始化cell,并赋值 model.cellHeight；以后每次直接从model中取汁高度
        DFLTableViewCell *cell = [[DFLTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"_cell"];
        model.cellHeight = [cell getCellHeigth:self.modelArray[indexPath.row]];
    }
    
    return model.cellHeight;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
