//
//  BusiessA.m
//  DesignMode
//
//  Created by xiekunpeng on 2019/5/5.
//  Copyright © 2019 xboker. All rights reserved.
//

#import "BusiessA.h"

@implementation BusiessA

- (void)handleTask {
    ///在调用父类之前可以处理一些逻辑;
    
    ///调用父类实现
    [super handleTask];
    
    ///在调用父类之后仍然可以处理一些逻辑;
}


@end
