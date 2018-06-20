//
//  Engineer.m
//  NewFeatureTest
//
//  Created by zhulin on 2018/5/31.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import "Engineer.h"

@implementation Engineer
__attribute__((constructor)) void before_main() {
    printf("before main\n");
}

__attribute__((destructor)) void after_main() {
    printf("after main\n");
}
@end
