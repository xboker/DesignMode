//
//  NowModel.h
//  DesignMode
//
//  Created by xiekunpeng on 2019/5/6.
//  Copyright © 2019 xboker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RemoteModel.h"

NS_ASSUME_NONNULL_BEGIN
@interface NowModel : NSObject

/**
 现在想对RemoteModel中 - (void)operationTask; 方法进行添加一些新的逻辑;
 因为原来的逻辑已经很完整,完善; 通过适配器模式进行扩展;
 */
@property (nonatomic, strong) RemoteModel   *remoteM;

///对原先逻辑进行扩展
- (void)nowOperationTask;

@end
NS_ASSUME_NONNULL_END
