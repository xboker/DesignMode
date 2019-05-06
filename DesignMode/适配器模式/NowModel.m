//
//  NowModel.m
//  DesignMode
//
//  Created by xiekunpeng on 2019/5/6.
//  Copyright © 2019 xboker. All rights reserved.
//

#import "NowModel.h"

@implementation NowModel

///对原先逻辑进行扩展
- (void)nowOperationTask {
    NSLog(@"先执行添加的新逻辑");
    ///然后执行原先的逻辑
    [self.remoteM operationTask];
    NSLog(@"然后执行一些补充的新逻辑");
}

@end
