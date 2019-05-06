//
//  GlobalModel.h
//  DesignMode
//
//  Created by xiekunpeng on 2019/5/6.
//  Copyright © 2019 xboker. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
///遵循这两个协议是为了防止无意中进行了copy或mutableCopy而开辟新地址;
@interface GlobalModel : NSObject<NSCopying, NSMutableCopying>

+ (GlobalModel *)share;

@end
NS_ASSUME_NONNULL_END
