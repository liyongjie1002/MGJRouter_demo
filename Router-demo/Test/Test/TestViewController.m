//
//  TestViewController.m
//  Test
//
//  Created by 李永杰 on 2019/7/10.
//  Copyright © 2019 muheda. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(100, 100, 100, 30)];
    [btn addTarget:self action:@selector(clickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:@"跳转到另一个子工程" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btn setFrame:CGRectMake(50, 200, 200, 30)];
        [btn addTarget:self action:@selector(clickAction1) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }


}

-(void)clickAction {
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)clickAction1 {
    [MGJRouter openURL:@"router://second" withUserInfo:@{@"navigationVC":self.navigationController} completion:nil];

}
@end
