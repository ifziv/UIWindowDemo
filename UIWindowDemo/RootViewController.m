//
//  RootViewController.m
//  UIWindowDemo
//
//  Created by zivInfo on 16/5/26.
//  Copyright © 2016年 xiwangtech.com. All rights reserved.
//

#import "RootViewController.h"
#import "AppDelegate.h"

@interface RootViewController ()
{
    UIView *vw;
    UIButton *btnLogin;
}

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    AppDelegate *app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    vw = [[UIView alloc] init];
    vw.frame = app.window.bounds;
    vw.backgroundColor = [UIColor redColor];
    vw.alpha = 0.4;
    [app.window addSubview:vw];
    
    
    btnLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnLogin.frame = CGRectMake(30.0, 275.0, 260.0, 45.0);
    [btnLogin setBackgroundColor:[UIColor colorWithRed:73.0/255.0 green:189.0/255.0 blue:204.0/255.0 alpha:1.0]];
    btnLogin.layer.cornerRadius = 4.0;
    [btnLogin setTitle:@"ok" forState:UIControlStateNormal];
    [btnLogin setTintColor:[UIColor whiteColor]];
    [btnLogin addTarget:self action:@selector(changePw) forControlEvents:UIControlEventTouchUpInside];
    [vw addSubview:btnLogin];
}

-(void)changePw
{
    NSLog(@"....");
    [vw removeFromSuperview];
//        [self.window makeKeyAndVisible];
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
