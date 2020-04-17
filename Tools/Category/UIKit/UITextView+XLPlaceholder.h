//
//  UITextView+XLPlaceholder.h
//  Tools
//
//  Created by 路 on 2020/4/17.
//  Copyright © 2020 路. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextView (XLPlaceholder)<UITextViewDelegate>
//@property (nonatomic, strong) UITextView *xl_placeholderTextView;
- (void)setXl_placeholder:(NSString *)text;
@end

NS_ASSUME_NONNULL_END
