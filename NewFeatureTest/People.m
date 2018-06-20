//
//  People.m
//  NewFeatureTest
//
//  Created by zhulin on 2018/5/31.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import "People.h"

@implementation People

static NSString * _str = nil;
static NSInteger _count = 0;

@dynamic count;

+ (NSInteger)count
{
    return _count;
}
+ (NSString *)str
{
    if (_str == nil)
    {
        _str = [[NSString alloc] init];
    }
    return _str;
}
+ (void)setStr:(NSString *)str
{
    if (_str != str)
    {
        _str = [str copy];
    }
}
- (instancetype)init
{
    if (self = [super init])
    {
        _count += 2;
    }
    return self;
}



- (instancetype)initPeople
{
    if (self = [super init])
    {
        //instancetype 定义提示instancetype未声明
        
    }
    return self;
}

//- (void)goHome:(instancetype)instance
//{
//
//}
- (void)playing
{
    return;
}
-(void)test
{
    EOCConnectionState state = EOCConnectionStateConnected;
    Direction direction = DirectionUp | DirectionLeft;
    NOCConnectionState stat = NOCConnectionStateconnectiong;
    DirectionType directionType = DirectionTypeUp | DirectionTypeDown;
    Direction d = 0;
    
    switch (d) {
        case DirectionUp:
            NSLog(@"shang");
            break;
        default:
            break;
    }
    
}

@end
