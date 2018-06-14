//
//  CatchCrash.m
//  QCCrashErrorTest
//
//  Created by EricZhang on 2018/5/24.
//  Copyright © 2018年 BYX. All rights reserved.
//

#import "CatchCrash.h"

@implementation CatchCrash

void uncaughtExceptionHandler(NSException *exception)  {
    
    //异常处堆栈
    NSArray *stackArr = [exception callStackSymbols];
    
    //异常原因
    NSString *reason = [exception reason];
    
    //异常名称
    NSString *name = [exception name];
    
    NSString *exceptionInfo = [NSString stringWithFormat:@"\n========Exception reason：%@\n========Exception name：%@\n========Exception stack：%@",reason, name, stackArr];
    NSLog(@"%@",exceptionInfo);
    
    //保存到本地，当然也可以实现上传,你看着办吧
    //[exceptionInfo writeToFile:[NSString stringWithFormat:@"%@/Documents/error.log",NSHomeDirectory()]  atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
   
    
    
    
}


@end
