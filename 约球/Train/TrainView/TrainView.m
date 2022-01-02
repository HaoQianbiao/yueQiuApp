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
    
    self.coursesButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.coursesButton.frame = CGRectMake(myWidth / 20, myHeight / 8, myWidth / 4, myWidth / 4);
    [self.coursesButton setImage:[UIImage imageNamed:@"3.jpg"] forState:UIControlStateNormal];
    self.coursesButton.layer.cornerRadius = 52;
    self.coursesButton.layer.masksToBounds = YES;
    [self addSubview:self.coursesButton];
    
    self.coachButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.coachButton.frame = CGRectMake(myWidth * 7.5 / 20, myHeight / 8, myWidth / 4, myWidth / 4);
    [self.coachButton setImage:[UIImage imageNamed:@"3.jpg"] forState:UIControlStateNormal];
    self.coachButton.layer.cornerRadius = 52;
    self.coachButton.layer.masksToBounds = YES;
    [self addSubview:self.coachButton];
    
    self.rankingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.rankingButton.frame = CGRectMake(myWidth * 14 / 20, myHeight / 8, myWidth / 4, myWidth / 4);
    [self.rankingButton setImage:[UIImage imageNamed:@"3.jpg"] forState:UIControlStateNormal];
    self.rankingButton.layer.cornerRadius = 52;
    self.rankingButton.layer.masksToBounds = YES;
    [self addSubview:self.rankingButton];
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
