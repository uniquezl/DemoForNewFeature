//
//  People.h
//  NewFeatureTest
//
//  Created by zhulin on 2018/5/31.
//  Copyright © 2018年 zhulin. All rights reserved.
//

#import <Foundation/Foundation.h>


//enum EOCConnectionState : NSInteger {
//    EOCConnectionStateDisconnected,
//    EOCConnectionStateconnectiong,
//    EOCConnectionStateConnected,
//};
//typedef enum EOCConnectionState EOCConnectionState;
NS_ASSUME_NONNULL_BEGIN

typedef enum {
    EOCConnectionStateDisconnected,
    EOCConnectionStateconnectiong,
    EOCConnectionStateConnected,
}EOCConnectionState;
enum EOCConnectionState : NSInteger;

typedef NS_ENUM(NSUInteger, NOCConnectionState) {
    NOCConnectionStateDisconnected,
    NOCConnectionStateconnectiong,
    NOCConnectionStateConnected,
};

enum Direction {
    DirectionUp                             =0,
    DirectionLeft                           = 1 << 0,
    Directionright                          = 1 << 1,
    DirectionDown                           = 1 << 2,
};

typedef enum Direction Direction;

typedef NS_OPTIONS(NSUInteger, DirectionType) {
    DirectionTypeUp                             =0,
    DirectionTypeLeft                           = 1 << 0,
    DirectionTyperight                          = 1 << 1,
    DirectionTypeDown                           = 1 << 2,
};

@interface People : NSObject

@property (class, nonatomic, assign, readonly)  NSInteger count;
@property (class, nonatomic, copy) NSString *str;
@property (nonatomic,copy)NSString *testNull;


- (instancetype)initPeople;
- (void)playing;

@end
NS_ASSUME_NONNULL_END
