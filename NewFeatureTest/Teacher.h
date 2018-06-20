//
//  Teacher.h
//  NewFeatureTest
//
//  Created by zhulin on 2018/5/31.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import "People.h"

@interface Teacher<__contravariant T> : People

@property (nonatomic, copy)NSString *aoe;

- (void)teach;
@end
