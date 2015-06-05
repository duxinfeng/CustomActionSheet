//
//  ZZActionSheet.h
//  HaoJiaZhang
//
//  Created by Xinfeng Du on 15/6/1.
//  Copyright (c) 2015年 好家长. All rights reserved.
//
// repo https://github.com/duxinfeng/CustomActionSheet
// fork https://github.com/sadjason/iOSDemos

#import <UIKit/UIKit.h>

@protocol ZZActionSheetDelegate;

@interface ZZActionSheet : UIView

@property (nonatomic, strong) id<ZZActionSheetDelegate> delegate;

- (instancetype)initWithTitle:(NSString *)title
                     delegate:(id<ZZActionSheetDelegate>)delegate
            cancelButtonTitle:(NSString *)cancelButtonTitle
       destructiveButtonTitle:(NSString *)destructiveButtonTitle
            otherButtonTitles:(NSArray *)otherButtonTitles;

- (void)showInView:(UIView *)view;
//- (void)dismiss;
//- (void)dismissWithAnimation:(BOOL)animation;
//- (void)setHidden:(BOOL)hidden;

@end

@protocol ZZActionSheetDelegate <NSObject>

- (void)ZZActionSheet:(ZZActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex;

@end
