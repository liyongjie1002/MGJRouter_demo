//
//  SecondRouterManager.m
//  Second
//
//  Created by 李永杰 on 2019/7/10.
//  Copyright © 2019 muheda. All rights reserved.
//

#import "SecondRouterManager.h"
#import "SecondViewController.h"

@implementation SecondRouterManager

+(void)load {
    [MGJRouter registerURLPattern:@"router://second" toHandler:^(NSDictionary *routerParameters) {
        
        NSDictionary *para = routerParameters[MGJRouterParameterUserInfo];
        
        UINavigationController *navigationController = para[@"navigationVC"];
        SecondViewController *testVC = [[SecondViewController alloc] init];
        [navigationController pushViewController:testVC animated:YES];
    }];
}

@end
