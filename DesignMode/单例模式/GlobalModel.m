//
//  GlobalModel.m
//  DesignMode
//
//  Created by xiekunpeng on 2019/5/6.
//  Copyright © 2019 xboker. All rights reserved.
//

#import "GlobalModel.h"


@implementation GlobalModel

+ (GlobalModel *)share {
    static GlobalModel * model = nil;
    ///确保只能执行一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        ///为什么不能用self进行alloc, 因为重写下面的方法中返回了[self share]会造成循环;
        model = [[super allocWithZone:NULL] init];
    });
    return model;
}


///确保多次alloc也是同一块地址
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [self share];
}


///确保即使进行copy了也是同一块地址
- (id)copyWithZone:(NSZone *)zone {
    return  self;
}

///确保即使进行mutableCopy了也是同一块地址
- (id)mutableCopyWithZone:(NSZone *)zone {
    return self;
}

@end
