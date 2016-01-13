//
//  DropDownViewController.h
//
//
//  Created by MS on 15/6/23.
//  Copyright (c) 2015年 啊啊啊\. All rights reserved.
//


#import "DropDownViewController.h"
#import "DropDownListView.h"

//匿名分类
@interface DropDownViewController ()
@property (nonatomic,strong)NSMutableArray *chooseArray;
@end


@implementation DropDownViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"模拟下拉按钮";

    
//     改这里---------------> 看这
    
    _chooseArray=[NSMutableArray arrayWithArray:@[
  @[@"你大爷", @"你大妈",   @"你大爷",@"你大妈",   @"你大爷",@"你大妈",   @"你大爷"],
//  @[@"你大爷", @"你大妈",   @"你大爷",@"你大妈",   @"你大爷",@"你大妈",   @"你大爷"],// 可以不要
//  @[@"你大爷", @"你大妈",   @"你大爷",@"你大妈",   @"你大爷",@"你大妈",   @"你大爷"],// 可以不要
//  @[@"你大爷", @"你大妈",   @"你大爷",@"你大妈",   @"你大爷",@"你大妈",   @"你大爷"],// 可以不要

  ]];
    
  //
   
    DropDownListView * dropDownView = [[DropDownListView alloc] initWithFrame:CGRectMake( (self.view.frame.size.width - 80) / 2,60, 80, 40) dataSource:self delegate:self];
    dropDownView.mSuperView = self.view;
    
    
    [self.view addSubview:dropDownView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark dropDownListDelegate
//类似于表的didselect  选中某行执行  这里是选中某组某行执行
-(void) chooseAtSection:(NSInteger)section index:(NSInteger)index
{
    NSLog(@"您点击了第%ld组第%ld行",(long)section,(long)index);
}

#pragma mark dropdownList DataSource
//类似于表的numberOfSections  设置组数
-(NSInteger)numberOfSections
{
    return [_chooseArray count];
}
//类似于表的numberOfRows 设置行数
-(NSInteger)numberOfRowsInSection:(NSInteger)section
{
    NSArray *rowArray =_chooseArray[section];
    return [rowArray count];
}
//设置CELL的Label.text
-(NSString *)titleInSection:(NSInteger)section index:(NSInteger) index
{
    return _chooseArray[section][index];
}
//默认展示的CELL
-(NSInteger)defaultShowSection:(NSInteger)section
{
    return 0;
}
@end
