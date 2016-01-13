//
//  DropDownViewController.h
//
//
//  Created by MS on 15/6/23.
//  Copyright (c) 2015年 啊啊啊\. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "DropDownChooseProtocol.h"

#define SECTION_BTN_TAG_BEGIN   1000
#define SECTION_IV_TAG_BEGIN    3000

@interface DropDownListView : UIView<UITableViewDelegate,UITableViewDataSource>
{
    //当前展开的section ，默认－1时，表示都没有展开
    NSInteger currentExtendSection;
}

//遵守自定义的Delegate协议
@property (nonatomic, assign) id<DropDownChooseDelegate> dropDownDelegate;
//遵守自定义的Datasouce协议
@property (nonatomic, assign) id<DropDownChooseDataSource> dropDownDataSource;

//两个视图 一个表
@property (nonatomic, strong) UIView *mSuperView;
@property (nonatomic, strong) UIView *mTableBaseView;
@property (nonatomic, strong) UITableView *mTableView;

//重写init方法
- (id)initWithFrame:(CGRect)frame dataSource:(id)datasource delegate:(id) delegate;
//重写set方法
- (void)setTitle:(NSString *)title inSection:(NSInteger) section;
//声明布尔 判断是否展示
- (BOOL)isShow;
//声明方法
- (void)hideExtendedChooseView;

@end
