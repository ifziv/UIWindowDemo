//
//  ViewController.m
//  UIWindowDemo
//
//  Created by zivInfo on 16/5/26.
//  Copyright © 2016年 xiwangtech.com. All rights reserved.
//

#import "ViewController.h"

//#import "AppDelegate.h"
#import "RootViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
//    AppDelegate *app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
//    UIView *vw = [[UIView alloc] init];
//    vw.frame = app.window.bounds;
//    vw.backgroundColor = [UIColor darkGrayColor];
//    vw.alpha = 0.4;
//    [app.window addSubview:vw];
    
    
    UIButton *btnLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnLogin.frame = CGRectMake(30.0, 250.0, 260.0, 45.0);
    [btnLogin setBackgroundColor:[UIColor colorWithRed:73.0/255.0 green:189.0/255.0 blue:204.0/255.0 alpha:1.0]];
    btnLogin.layer.cornerRadius = 4.0;
    [btnLogin setTitle:@"next" forState:UIControlStateNormal];
    [btnLogin setTintColor:[UIColor whiteColor]];
    [btnLogin addTarget:self action:@selector(changePw) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnLogin];
}

-(void)changePw
{
    RootViewController *rootVC = [[RootViewController alloc] init];
    [self.navigationController pushViewController:rootVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
