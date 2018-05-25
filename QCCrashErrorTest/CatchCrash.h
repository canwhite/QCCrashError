//
//  CatchCrash.h
//  QCCrashErrorTest
//
//  Created by EricZhang on 2018/5/24.
//  Copyright © 2018年 BYX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CatchCrash : NSObject

void uncaughtExceptionHandler(NSException *exception);

@end
