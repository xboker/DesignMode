//
//  ViewController.m
//  DesignMode
//
//  Created by xiekunpeng on 2019/4/30.
//  Copyright © 2019 xboker. All rights reserved.
//

#import "ViewController.h"

#import "HandleModel.h"
#import "HandleModelA.h"
#import "HandleModelB.h"
#import "HandleModelC.h"

#import "BusiessModel.h"
#import "BusiessA.h"
#import "BusiessB.h"
#import "RequestModel.h"
#import "Request1.h"
#import "Request2.h"

#import "RemoteModel.h"
#import "NowModel.h"

#import "GlobalModel.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self responsiblityChain];
    [self bridge];
    [self adapter];
    [self singleton];
}




///责任链模式
- (void)responsiblityChain {
    ///这个数组作用是: 模拟一系列需要处理的任务
    NSArray *taskArr = @[@(1), @(3), @(11), @(15), @(45), @(23), @(80), @(24), @(66)];
    HandleModel *taskModel = [[HandleModel alloc] init];
    HandleModel *taskModelA = [[HandleModelA alloc] init];
    HandleModel *taskModelB = [[HandleModelB alloc] init];
    HandleModel *taskModelC = [[HandleModelC alloc] init];
    ///创建一个责任链, 如果当前模型不处理, 就把任务向链中的下一个模型抛
    taskModel.nextHandler = taskModelA;
    taskModelA.nextHandler = taskModelB;
    taskModelB.nextHandler = taskModelC;

    ///模拟执行多个任务
    for (NSNumber *taskNum in taskArr) {
        [taskModel handle:^(HandleModel *handler, BOOL handled) {
            NSLog(@"任务编号: %@ 执行状态: %d   执行者: %@", taskNum, handled, handler.class);
        } taskType:taskNum.integerValue];
    }
}



///桥接模式
- (void)bridge {
    ///根据业务情形选择使用BusiessA或者BusiessB
    BusiessModel *businessM = [[BusiessA alloc] init];
    ///根据业务情形选择使用Request1或者Request2
    RequestModel *requestM = [[Request2 alloc] init];
    ///抽象类的逻辑实例实现
    businessM.requestModel = requestM;
    ///真正处理业务
    [businessM handleTask];
}


///适配器模式
- (void)adapter {
    RemoteModel *remoteModel = [[RemoteModel alloc] init];
    NowModel *nowModel = [[NowModel alloc] init];
    nowModel.remoteM = remoteModel;
    [nowModel nowOperationTask];
}


///单例模式
- (void)singleton {
    GlobalModel *model = [[GlobalModel alloc] init];
    GlobalModel *model1 = [[GlobalModel alloc] init];
    GlobalModel *model2 = [model copy];
    GlobalModel *model3 = [model mutableCopy];
    GlobalModel *model4 = [GlobalModel share];
    NSLog(@"model地址:   %@", model);
    NSLog(@"model1地址1: %@", model1);
    NSLog(@"model2地址2: %@", model2);
    NSLog(@"model3地址3: %@", model3);
    NSLog(@"model4地址4: %@", model4);
}



@end
