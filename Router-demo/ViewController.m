//
//  ViewController.m
//  Router-demo
//
//  Created by 李永杰 on 2019/7/10.
//  Copyright © 2019 muheda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)basic:(UIButton *)sender {

    [MGJRouter openURL:@"router://basic" withUserInfo:@{@"navigationVC":self.navigationController} completion:nil];

}

- (IBAction)param:(UIButton *)sender {
    [MGJRouter openURL:@"router://param" withUserInfo:@{@"navigationVC":self.navigationController, @"data":@"基础跳转"} completion:nil];

}

- (IBAction)callback:(UIButton *)sender {
    
    [MGJRouter openURL:@"router://callback" withUserInfo:@{@"navigationVC":self.navigationController,@"block":^(NSString *text) {
        [sender setTitle:text forState:UIControlStateNormal];
    }} completion:nil];

}
- (IBAction)children:(UIButton *)sender {
    
    [MGJRouter openURL:@"router://children" withUserInfo:@{@"navigationVC":self.navigationController,@"data":@"678678"} completion:nil];

}

@end
