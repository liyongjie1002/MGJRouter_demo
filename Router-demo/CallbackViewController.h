//
//  CallbackViewController.h
//  Router-demo
//
//  Created by 李永杰 on 2019/7/10.
//  Copyright © 2019 muheda. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^BlockText) (NSString *text);

NS_ASSUME_NONNULL_BEGIN

@interface CallbackViewController : UIViewController

@property (nonatomic, copy) BlockText   textBlock;

@end

NS_ASSUME_NONNULL_END
