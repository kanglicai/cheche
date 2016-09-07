//
//  AAViewController.m
//  SDAutoLayout
//
//  Created by jiujun wang on 15/12/7.
//  Copyright © 2015年 oho. All rights reserved.
//

#import "AAViewController.h"

@interface AAViewController ()

@end

@implementation AAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *view1 = [UIView new];
    view1.layer.masksToBounds = YES;
    view1.layer.cornerRadius = 25;
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    view1.sd_layout
    .topSpaceToView(self.view, 80)//view1顶部到view0底部的距离是10
    .leftSpaceToView(self.view, 10)   //view1左边和view0到self.view的左边距是相等的
    .widthIs(50)
    .heightIs(50);

    
    UIView *view2 = [UIView new];
    view2.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view2];
    view2.sd_layout
    .topEqualToView(view1)
    .leftSpaceToView(view1,10)
    .rightSpaceToView(self.view,10)
    .heightIs(100);

    
    UIView *view3 = [UIView new];
    view3.layer.masksToBounds = YES;
    view3.layer.cornerRadius = 25;
    view3.backgroundColor = [UIColor redColor];
    [self.view addSubview:view3];
    view3.sd_layout
    .topSpaceToView(view2,10)
    .rightSpaceToView(self.view,10)
    .widthIs(50)
    .heightIs(50);
    
    
    UIView *view4 = [UIView new];
    view4.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view4];
    view4.sd_layout
    .topSpaceToView(view2,20)
    .rightSpaceToView(view3,10)
    .leftSpaceToView(self.view,10)
    .heightIs(100);
    
    UILabel *label = [UILabel new];
    label.backgroundColor = [UIColor blueColor];
    label.text = @"在使用DSA或RSA签名时，需要私钥和公钥一起参与签名。开发者可以通过支付宝公钥验证消息来源，同时可使用自己的私钥对信息进行加密。数字签名机制是支付宝开放平台与开发者网关安全通信的基础，若开发者不熟悉数字签名机制，请先查阅相关资料。";
    [self.view addSubview:label];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
