# CustomActionSheet
>自定义 仿微信、微博 的ActionSheet

## Description
### fork [Repo](https://github.com/sadjason/iOSDemos) 中一个Demo,修改了一些颜色值，修复长按崩溃Bug


##How to Use

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
	- (void)ZZActionSheet:(ZZActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex 
	 {
    NSLog(@"---->%zd",buttonIndex);
	}





![效果截图](http://7xjic7.com1.z0.glb.clouddn.com/CustomActionSheet.png)
