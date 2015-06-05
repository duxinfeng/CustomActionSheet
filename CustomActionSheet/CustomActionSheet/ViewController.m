//
//  ViewController.m
//  CustomActionSheet
//
//  Created by Xinfeng Du on 15/6/5.
//  Copyright (c) 2015年 niux Tech. All rights reserved.
//
// repo https://github.com/duxinfeng/CustomActionSheet
// fork https://github.com/sadjason/iOSDemos

#import "ViewController.h"
#import "ZZActionSheet.h"

@interface ViewController ()<ZZActionSheetDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"Click On" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    button.frame = CGRectMake(0, 0, self.view.frame.size.width, 44);
    button.center = self.view.center;
    [button addTarget:self action:@selector(buttonClickOn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonClickOn:(id)sender
{
    ZZActionSheet *actionSheet =
    [[ZZActionSheet alloc] initWithTitle:nil
                                delegate:self
                       cancelButtonTitle:@"取消"
                  destructiveButtonTitle:nil
                       otherButtonTitles:@[@"从手机相册中选", @"拍照"]];
    [actionSheet showInView:self.view];

}

#pragma mark - ZZActionSheetDelegate
- (void)ZZActionSheet:(ZZActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSLog(@"---->%zd",buttonIndex);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
