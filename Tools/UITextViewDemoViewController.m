//
//  UITextViewDemoViewController.m
//  Tools
//
//  Created by 路 on 2020/4/17.
//  Copyright © 2020 路. All rights reserved.
//

#import "UITextViewDemoViewController.h"

@interface UITextViewDemoViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation UITextViewDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.textView setXl_placeholder:@"请说您的建议"];
    self.textView.backgroundColor = [UIColor hexColor:0xE0E0E0];
}
- (IBAction)click
{
    NSLog(@"%f", [self xl_keyboardFrame].size.height);
}
@end
