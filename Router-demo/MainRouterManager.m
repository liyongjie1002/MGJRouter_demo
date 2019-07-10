//
//  MainRouterManager.m
//  Router-demo
//
//  Created by 李永杰 on 2019/7/10.
//  Copyright © 2019 muheda. All rights reserved.
//

#import "MainRouterManager.h"
#import "BasicViewController.h"
#import "ParamViewController.h"
#import "CallbackViewController.h"

@implementation MainRouterManager


+(void)load {
    [MGJRouter registerURLPattern:@"router://basic" toHandler:^(NSDictionary *routerParameters) {
        NSDictionary *para = routerParameters[MGJRouterParameterUserInfo];

        UINavigationController *navigationController = para[@"navigationVC"];
        BasicViewController *basic = [[BasicViewController alloc] init];
        [navigationController pushViewController:basic animated:YES];
    }];
    
    [MGJRouter registerURLPattern:@"router://param" toHandler:^(NSDictionary *routerParameters) {
        NSDictionary *para = routerParameters[MGJRouterParameterUserInfo];

        UINavigationController *navigationController = para[@"navigationVC"];
        ParamViewController *param = [[ParamViewController alloc] init];
        param.title = para[@"data"];

        [navigationController pushViewController:param animated:YES];
    }];
    
    [MGJRouter registerURLPattern:@"router://callback" toHandler:^(NSDictionary *routerParameters) {
        NSDictionary *para = routerParameters[MGJRouterParameterUserInfo];

        UINavigationController *navigationController = para[@"navigationVC"];
        BlockText textBlock = para[@"block"];
        CallbackViewController *callback = [[CallbackViewController alloc] init];
        callback.textBlock = textBlock;
        [navigationController pushViewController:callback animated:YES];
    }];
}


@end
