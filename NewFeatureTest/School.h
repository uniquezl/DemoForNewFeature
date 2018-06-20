//
//  School.h
//  NewFeatureTest
//
//  Created by zhulin on 2018/6/7.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface School<__contravariant T> : NSObject

@property (nonatomic, strong) T obj;
@property (nonatomic, strong) NSMutableArray <T> *sch;

- (instancetype)init;
- (void)addPeople:(T)people;
- (T)retair:(T)people;

@end
