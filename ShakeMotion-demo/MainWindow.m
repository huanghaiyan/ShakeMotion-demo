//
//  MainWindow.m
//  ShakeMotion-demo
//
//  Created by huanghy on 16/1/11.
//  Copyright © 2016年 huanghy. All rights reserved.
//

#import "MainWindow.h"

@implementation MainWindow

-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (event.type == UIEventTypeMotion && event.subtype == UIEventSubtypeMotionShake) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"NOTIFICATION_SHAKE" object:self];
    }
}
@end
