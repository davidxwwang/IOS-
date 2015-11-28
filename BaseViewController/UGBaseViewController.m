//
//  UGBaseViewController.m
//  FTB
//
//  Created by Jeffwang on 15/1/30.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//

#import "UGBaseViewController.h" 
#import "AppMacro.h"

@interface UGBaseViewController ()

@end

@implementation UGBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Do any additional setup after loading the view.
    [self setNeedsStatusBarAppearanceUpdate];
    //设置VIEW背景颜色
    [self.view setBackgroundColor:RGB(245, 245, 245)];
    
}

-(void)setLeftBackButton
{
    [self showBarButton:[UIImage imageNamed:@"btn_back.png"]];
}


- (void)showBarButton:(UIImage *)image
{
    CGRect buttonFrame = CGRectMake(0, 0, image.size.width + 15.0f, self.navigationController.navigationBar.frame.size.height);
    UIButton * button = [[UIButton alloc] initWithFrame:buttonFrame];
    button.contentMode = UIViewContentModeScaleAspectFit;
    button.backgroundColor = [UIColor clearColor];
    [button setImage:image forState:UIControlStateNormal];
    [button setImageEdgeInsets: UIEdgeInsetsMake(0, -20, 0, 0)];
    [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
}


-(void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}


-(void)setLeftButtonEmpty
{
    UIView* view = [[UIView alloc] init];
    view.backgroundColor = [UIColor redColor];
    self.navigationItem.leftBarButtonItem =[[UIBarButtonItem alloc] initWithCustomView:view] ;
}



-(void)initWorkSpace
{
    self.originX=0;
    
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 70000
    UIScreen* screen = [UIScreen mainScreen];
    if ( IOS7_OR_LATER )
    {
        self.originX = 0;
        self.originY = STATUSBARHEIGHT;
        
    }else
    {
        self.originX = 0;
        self.originY = 0;
    }
    self.workSpaceSize = CGSizeMake(screen.bounds.size.width,
                                    screen.bounds.size.height- STATUSBARHEIGHT);
    
#endif
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
