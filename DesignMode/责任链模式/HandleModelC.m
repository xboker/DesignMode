//
//  HandleModelC.m
//  DesignMode
//
//  Created by xiekunpeng on 2019/5/5.
//  Copyright © 2019 xboker. All rights reserved.
//

#import "HandleModelC.h"

@implementation HandleModelC

//这个方法继承自父类, 逻辑不需变动, 如果当前类不处理就向链条的下一个指派
//- (void)handle:(HanleResult)resultB taskType:(NSInteger)type {
//    HandleSuccess successB = ^(BOOL success){
//        if (success) {
//            resultB(self, YES);
//        }else {
//            [self.nextHandler handle:resultB taskType:type];
//        }
//    };
//    [self handleBusiess:successB taskType:type];
//}


- (void)handleBusiess:(HandleSuccess)callB taskType:(NSInteger)type{
    if (type >= 30  && type < 50) {
        ///执行逻辑处理, 处理完成后回调
        callB(YES);
    }else {
        callB(NO);
    }
}

@end
