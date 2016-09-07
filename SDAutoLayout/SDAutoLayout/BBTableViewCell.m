//
//  BBTableViewCell.m
//  SDAutoLayout
//
//  Created by jiujun wang on 15/12/8.
//  Copyright © 2015年 oho. All rights reserved.
//

#import "BBTableViewCell.h"
#import "UITableView+SDAutoTableViewCellHeight.h"

@implementation BBTableViewCell
{
    UIImageView *view0;
    UILabel *view1;
    UILabel *view2;
    UIImageView *view3;
}
- (void)awakeFromNib {
    // Initialization code
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        view0 = [UIImageView new];
        view0.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:view0];
        view0.sd_layout
        .topSpaceToView(self.contentView,10)
        .leftSpaceToView(self.contentView,10)
        .widthIs(40)
        .heightIs(40);
        
        
        view1 = [UILabel new];
        view1.textColor = [UIColor lightGrayColor];
        view1.font = [UIFont systemFontOfSize:16];
        [self.contentView addSubview:view1];
        view1.sd_layout
        .topEqualToView(view0)
        .leftSpaceToView(view0,10)
        .rightSpaceToView(self.contentView,10)
        .heightIs(20);
        
        
        view2 = [UILabel new];
        view2.textColor = [UIColor grayColor];
        view2.font = [UIFont systemFontOfSize:16];
        [self.contentView addSubview:view2];
        view2.sd_layout
        .topSpaceToView(view1,10)
        .leftEqualToView(view1)
        .rightSpaceToView(self.contentView,10)
        .autoHeightRatio(0);
        
        
        view3 = [UIImageView new];
        view3.backgroundColor = [UIColor orangeColor];
        [self.contentView addSubview:view3];
        view3.sd_layout
        .topSpaceToView(view2,10)
        .leftEqualToView(view2)
        .widthRatioToView(view2,0.7);
        
    }
 
    return self;
}

-(void)setModel:(BBModel *)model{
    _model = model;
    view0.image = [UIImage imageNamed:_model.iconName];
    view1.text = model.titleName;
    view2.text = model.contentName;
    
    CGFloat bottomMargin = 0;
    
    UIImage *pic = [UIImage imageNamed:model.picName];
    if (pic.size.width > 0) {
        CGFloat scale = pic.size.height/pic.size.width;
        view3.sd_layout.autoHeightRatio(scale);
        view3.image = pic;
        bottomMargin = 10;
    }else{
        view3.sd_layout.autoHeightRatio(0);
    }
    
    [self setupAutoHeightWithBottomView:view3 bottomMargin:bottomMargin];
    
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
