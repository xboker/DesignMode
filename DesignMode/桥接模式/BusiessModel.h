//
//  BusiessModel.h
//  DesignMode
//
//  Created by xiekunpeng on 2019/5/5.
//  Copyright © 2019 xboker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequestModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface BusiessModel : NSObject
///桥接模式的核心实现, 抽象类持有;
@property (nonatomic, strong) RequestModel *requestModel;

///处理业务
- (void)handleTask;

@end

NS_ASSUME_NONNULL_END
