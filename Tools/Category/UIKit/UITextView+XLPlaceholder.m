//
//  UITextView+XLPlaceholder.m
//  Tools
//
//  Created by 路 on 2020/4/17.
//  Copyright © 2020 路. All rights reserved.
//

#import "UITextView+XLPlaceholder.h"
#import <objc/runtime.h>

static const char *xl_placeholderTextView = "xl_placeholderTextView";

@implementation UITextView (XLPlaceholder)

- (UITextView *)xl_placeholderTextView
{
    return objc_getAssociatedObject(self, xl_placeholderTextView);
}
- (void)setXl_placeholderTextView:(UITextView *)placeholderTextView
{
    objc_setAssociatedObject(self, xl_placeholderTextView, placeholderTextView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (void)setXl_placeholder:(NSString *)text
{
    if (!self.xl_placeholderTextView)
    {
        UITextView *textView = [[UITextView alloc] initWithFrame:self.bounds];
        textView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        textView.font = self.font;
        textView.backgroundColor = [UIColor clearColor];
        if (@available(iOS 13.0, *))
        {
            textView.textColor = [UIColor placeholderTextColor];
        } else
        {
            textView.textColor = [[UIColor colorWithRed:60/255.0 green:60/255.0 blue:67/255.0 alpha:1] colorWithAlphaComponent:0.3];
        }
        textView.userInteractionEnabled = NO;
        textView.text = text;
        [self addSubview:textView];
        [self setXl_placeholderTextView:textView];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewDidChange:) name:UITextViewTextDidChangeNotification object:self];
    }
    self.xl_placeholderTextView.text = text;
}

#pragma mark ---  UITextViewDelegate监听textView的内容变化
-(void)textViewDidChange:(UITextView *)textView
{
    if (self.text && [self.text isEqualToString:@""])
    {
        self.xl_placeholderTextView.hidden = NO;
    }else
    {
        self.xl_placeholderTextView.hidden = YES;
    }
}

#pragma mark ---  移除通知
- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}
@end
