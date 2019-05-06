//
//  HandleModel.m
//  DesignMode
//
//  Created by xiekunpeng on 2019/4/30.
//  Copyright © 2019 xboker. All rights reserved.
//

#import "HandleModel.h"

@implementation HandleModel

///责任链入口方法, 如果当前类不处理就向链条的下一个指派
- (void)handle:(HanleResult)resultB taskType:(NSInteger)type{
    HandleSuccess successB = ^(BOOL success){
        if (success) {
            resultB(self, success);
        }else {
            ///当前不处理, 沿着责任链, 指派给下一个业务处理
            if (self.nextHandler) {
                [self.nextHandler handle:resultB taskType:type];
            }else {
                ///没有处理者, 传为nil, 结束链条的传递
                resultB(nil, NO);
            }
        }
    };
    ///业务进行处理
    [self handleBusiess:successB taskType:type];
}


- (void)handleBusiess:(HandleSuccess)callB taskType:(NSInteger)type{
    if (type < 10) {
        ///执行逻辑处理, 处理完成后回调
        callB(YES);
     }else {
        callB(NO);
     }
}

@end
