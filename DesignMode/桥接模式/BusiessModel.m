//
//  BusiessModel.m
//  DesignMode
//
//  Created by xiekunpeng on 2019/5/5.
//  Copyright © 2019 xboker. All rights reserved.
//

#import "BusiessModel.h"

@implementation BusiessModel

/**
 具体实现的时候会有四种组合去处理业务
 BusinessA ---> Request1   Request2
 BusinessB ---> Request1   Request2
 */
- (void)handleTask {
    [self.requestModel requestData];
}

@end
