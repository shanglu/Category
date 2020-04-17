//
//  XLEmptyView.h
//  Tools
//
//  Created by 路 on 2020/4/17.
//  Copyright © 2020 路. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^ButtonBlock)(void);
@interface XLEmptyView : UIView
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button;
- (void)showIcon:(NSString *)icon text:(NSString *)text buttonTitle:(NSString *)title;
@property (nonatomic, copy) ButtonBlock block;
@end

NS_ASSUME_NONNULL_END
