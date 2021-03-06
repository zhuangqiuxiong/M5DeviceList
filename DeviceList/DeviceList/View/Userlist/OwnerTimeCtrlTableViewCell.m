//
//  OwnerTimeCtrlTableViewCell.m
//  DeviceList
//
//  Created by zhuangqiuxiong on 16/3/31.
//  Copyright © 2016年 tplink. All rights reserved.
//

#import "OwnerTimeCtrlTableViewCell.h"

static CGFloat const funcLabel_left_margin =         15.0f;
static CGFloat const funcLabel_top_margin =          5.0f;
static CGFloat const funcLabel_right_margin =        5.0f;

static CGFloat const timeLabel_right_margin =        5.0f;
static CGFloat const timeLabel_top_margin =          5.0f;
static CGFloat const timeLabel_width =              40.0f;

@interface OwnerTimeCtrlTableViewCell()

@property (nonatomic, strong) UILabel *funcLabel;
@property (nonatomic, strong) UILabel *timeLabel;

@end

@implementation OwnerTimeCtrlTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self creatUI];
    }
    return self;
}

- (void)creatUI
{
    self.backgroundColor = [UIColor whiteColor];
    
    self.funcLabel = [[UILabel alloc] init];
    [self.funcLabel setFont:[UIFont systemFontOfSize:15.0]];
    self.funcLabel.textColor = [UIColor grayColor];
    self.funcLabel.numberOfLines = 1;
    self.funcLabel.textAlignment = NSTextAlignmentLeft;
    self.funcLabel.lineBreakMode = NSLineBreakByWordWrapping;
    [self.contentView addSubview:self.funcLabel];
    
    self.timeLabel = [[UILabel alloc] init];
    [self.timeLabel setFont:[UIFont systemFontOfSize:10.0]];
    self.timeLabel.textColor = [UIColor grayColor];
    self.timeLabel.numberOfLines = 1;
    self.timeLabel.textAlignment = NSTextAlignmentRight;
    self.timeLabel.lineBreakMode = NSLineBreakByWordWrapping;
    [self.contentView addSubview:self.timeLabel];
    
    [self addConstraint];
    
}

- (void)updateFuncLabel:(NSString *)funcString
{
    self.funcLabel.text = funcString;
}

- (void)updateTimeLabel:(NSString *)timeString
{
    self.timeLabel.text = timeString;
}

- (void)addConstraint
{
    
    [self.timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.timeLabel.superview).offset(timeLabel_top_margin);
        make.bottom.equalTo(self.timeLabel.superview).offset(-timeLabel_top_margin);
        make.right.equalTo(self.timeLabel.superview).offset(-timeLabel_right_margin);
        make.width.equalTo(self.timeLabel.superview).offset(timeLabel_width);
        
    }];
    
    
    [self.funcLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.funcLabel.superview).offset(funcLabel_top_margin);
        make.bottom.equalTo(self.funcLabel.superview).offset(-funcLabel_top_margin);
        make.left.equalTo(self.funcLabel.superview).offset(funcLabel_left_margin);
        make.right.equalTo(self.funcLabel.superview).offset(-funcLabel_right_margin);
        
    }];
    
}

- (NSString *)getTime
{
    return self.timeLabel.text;
}

@end
