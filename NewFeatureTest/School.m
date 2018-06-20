//
//  School.m
//  NewFeatureTest
//
//  Created by zhulin on 2018/6/7.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import "School.h"

@implementation School
- (instancetype)init
{
    if (self = [super init])
    {
        _sch = [[NSMutableArray alloc] init];
        
    }
    return self;
}
- (void)addPeople:(id)people
{
    [self.sch addObject:people];
}
- (id)retair:(id)people
{
    return [people class];
}

@end
