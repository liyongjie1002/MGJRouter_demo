//
//  TestRouterManager.m
//  Test
//
//  Created by 李永杰 on 2019/7/10.
//  Copyright © 2019 muheda. All rights reserved.
//

#import "TestRouterManager.h"
#import "TestViewController.h"

@implementation TestRouterManager

+(void)load {
    [MGJRouter registerURLPattern:@"router://children" toHandler:^(NSDictionary *routerParameters) {
        NSDictionary *para = routerParameters[MGJRouterParameterUserInfo];

        UINavigationController *navigationController = para[@"navigationVC"];
        TestViewController *testVC = [[TestViewController alloc] init];
        [navigationController pushViewController:testVC animated:YES];
    }];
}

@end
