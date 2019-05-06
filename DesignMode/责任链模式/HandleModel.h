//
//  HandleModel.h
//  DesignMode
//
//  Created by xiekunpeng on 2019/4/30.
//  Copyright © 2019 xboker. All rights reserved.
//

#import <Foundation/Foundation.h>
 

@class HandleModel;
typedef void(^HandleSuccess)(BOOL handled);
typedef void(^HanleResult)(HandleModel * _Nullable handler, BOOL handled);

NS_ASSUME_NONNULL_BEGIN

@interface HandleModel : NSObject
///下一个响应者, 构成响应链的关键
@property (nonatomic, strong) HandleModel   *nextHandler;
//响应者的处理方法
- (void)handle:(HanleResult)resultB taskType:(NSInteger)type;

///各个业务在该方法中做实际的处理事宜
- (void)handleBusiess:(HandleSuccess)callB taskType:(NSInteger)type;


@end

NS_ASSUME_NONNULL_END
