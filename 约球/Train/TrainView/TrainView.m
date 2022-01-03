//
//  TrainView.m
//  约球
//
//  Created by 张佳乔 on 2022/1/2.
//

#import "TrainView.h"

#define myWidth [UIScreen mainScreen].bounds.size.width
#define myHeight [UIScreen mainScreen].bounds.size.height

@implementation TrainView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    //初始化UI控件
    [self initUI];
    
    return self;
}

- (void)initUI {
    self.coursesButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.coursesButton setImage:[UIImage imageNamed:@"3.jpg"] forState:UIControlStateNormal];
    self.coursesButton.layer.cornerRadius = 52;
    self.coursesButton.layer.masksToBounds = YES;
    [self addSubview:self.coursesButton];
    [self.coursesButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(@(myWidth / 4));
        make.left.equalTo(self).offset(myWidth / 20);
        make.top.equalTo(self).offset(myHeight / 8);
    }];
    self.coursesLabel = [[UILabel alloc] init];
    self.coursesLabel.text = @"定制课程";
    self.coursesLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.coursesLabel];
    [self.coursesLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(myWidth / 20);
        make.top.equalTo(self.coursesButton).offset(myHeight / 10);
        make.width.equalTo(@(myWidth / 4));
        make.height.equalTo(@(myWidth / 6));
    }];
    
    self.coachButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.coachButton setImage:[UIImage imageNamed:@"3.jpg"] forState:UIControlStateNormal];
    self.coachButton.layer.cornerRadius = 52;
    self.coachButton.layer.masksToBounds = YES;
    [self addSubview:self.coachButton];
    [self.coachButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(myHeight / 8);
        make.centerX.equalTo(self);
        make.size.equalTo(@(myWidth / 4));
    }];
    self.coachLabel = [[UILabel alloc] init];
    self.coachLabel.text = @"个人教练";
    self.coachLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.coachLabel];
    [self.coachLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(self.coachButton).offset(myHeight / 10);
        make.width.equalTo(@(myWidth / 4));
        make.height.equalTo(@(myWidth / 6));
    }];
    
    self.rankingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.rankingButton setImage:[UIImage imageNamed:@"3.jpg"] forState:UIControlStateNormal];
    self.rankingButton.layer.cornerRadius = 52;
    self.rankingButton.layer.masksToBounds = YES;
    [self addSubview:self.rankingButton];
    [self.rankingButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(myHeight / 8);
        make.right.equalTo(self).offset(- myWidth / 20);
        make.size.equalTo(@(myWidth / 4));
    }];
    self.rankingLabel = [[UILabel alloc] init];
    self.rankingLabel.text = @"积分排行";
    self.rankingLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.rankingLabel];
    [self.rankingLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self).offset(- myWidth / 20);
        make.top.equalTo(self.rankingButton).offset(myHeight / 10);
        make.width.equalTo(@(myWidth / 4));
        make.height.equalTo(@(myWidth / 6));
    }];
    
    //设置分割线
    self.topLine = [[UILabel alloc] init];
    self.topLine.backgroundColor = [UIColor systemGrayColor];
    self.topLine.text = @"";
    [self addSubview:self.topLine];
    [self.topLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.coachButton).offset(-myWidth / 20);
        make.left.equalTo(@0);
        make.height.equalTo(@1);
        make.width.equalTo(@(myWidth));
    }];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
