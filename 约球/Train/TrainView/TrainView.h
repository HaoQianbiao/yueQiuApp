//
//  TrainView.h
//  约球
//
//  Created by 张佳乔 on 2022/1/2.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"

NS_ASSUME_NONNULL_BEGIN

@interface TrainView : UIView

@property (nonatomic, strong) UIButton *coursesButton;
@property (nonatomic, strong) UIButton *coachButton;
@property (nonatomic, strong) UIButton *rankingButton;
@property (nonatomic, strong) UILabel *coursesLabel;
@property (nonatomic, strong) UILabel *coachLabel;
@property (nonatomic, strong) UILabel *rankingLabel;
@property (nonatomic, strong) UILabel *topLine;

@end

NS_ASSUME_NONNULL_END
