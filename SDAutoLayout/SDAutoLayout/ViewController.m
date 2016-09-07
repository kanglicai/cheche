//
//  ViewController.m
//  SDAutoLayout
//
//  Created by jiujun wang on 15/12/3.
//  Copyright © 2015年 oho. All rights reserved.
//

#import "ViewController.h"
#import "AAViewController.h"
#import "BBTableViewController.h"
#import "BBViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //space 间隙,间隔      equal 相等于

    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton new];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button.sd_layout
    .leftSpaceToView(self.view, 10)
    .rightSpaceToView(self.view,10)
    .topSpaceToView(self.view, 74)
    .heightIs(130);
   // .widthRatioToView(self.view, (SCREEN_WIDTH-20)/SCREEN_WIDTH);//view0的宽度相当于self.view的宽度的80%
    
    
    UIButton *view1 = [UIButton new];
    view1.backgroundColor = [UIColor yellowColor];
    [view1 addTarget:self action:@selector(viewClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:view1];
    view1.sd_layout
    .topSpaceToView(button, 10)//view1顶部到view0底部的距离是10
    .leftEqualToView(button)   //view1左边和view0到self.view的左边距是相等的
    .widthRatioToView(self.view,(SCREEN_WIDTH/2-15)/SCREEN_WIDTH)
    .bottomSpaceToView(self.view,10);
    
    
    UIView *view2 = [UIView new];
    view2.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view2];
    view2.sd_layout
    .topEqualToView(view1)
    .leftSpaceToView(view1,10)
    .rightSpaceToView(self.view,10)
    .bottomSpaceToView(self.view,10);
    
}

-(void)buttonClick{
    AAViewController *VC = [[AAViewController alloc] init];
    [self.navigationController pushViewController:VC animated:YES];
}

-(void)viewClick{
    BBTableViewController *VC = [BBTableViewController new];
    [self.navigationController pushViewController:VC animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
