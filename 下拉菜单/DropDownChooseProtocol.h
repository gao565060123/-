//
//  DropDownViewController.h
//
//
//  Created by MS on 15/6/23.
//  Copyright (c) 2015年 啊啊啊\. All rights reserved.
//


#import <Foundation/Foundation.h>


//本类定义两个协议

//协议1 Delegate
@protocol DropDownChooseDelegate <NSObject>
//表示该方法可选
@optional
//类似 UITableView的didselect方法 点击时执行
-(void) chooseAtSection:(NSInteger)section index:(NSInteger)index;
@end


//协议2 Datasouce
@protocol DropDownChooseDataSource <NSObject>
//类似 UITableView的设置组数方法
-(NSInteger)numberOfSections;
//类似 UITableView的设置行数方法
-(NSInteger)numberOfRowsInSection:(NSInteger)section;
//类似 UITableView的设置cell的方法
-(NSString *)titleInSection:(NSInteger)section index:(NSInteger) index;
//设置默认展示第几行
-(NSInteger)defaultShowSection:(NSInteger)section;

@end



