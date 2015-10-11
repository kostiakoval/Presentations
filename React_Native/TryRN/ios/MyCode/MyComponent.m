//
//  MyComponent.m
//  AwesomeProject
//
//  Created by Kostiantyn Koval on 05/10/15.
//  Copyright © 2015 Facebook. All rights reserved.
//
@import UIKit;

#import "MyComponent.h"
#import "RCTLog.h"
#import "RCTEventDispatcher.h"

@implementation MyComponent

@synthesize bridge = _bridge;

RCT_EXPORT_MODULE();

+ (instancetype)new {
  return [super new];
}

- (instancetype)init
{
  self = [super init];
  if (self) {
    NSLog(@"init");
  }
  return self;
}

// initWithName can't be called directly from JS
- (instancetype)initWithName:(NSString *)name {
  self = [self init];
  if (self) {
    NSLog(@"Init with name");
  }
  return self;
}

#pragma mark - React Methods

RCT_EXPORT_METHOD(sendString:(NSString *)string) {

  NSLog(@"Objc MyComponent sendString: %@", string);
}

RCT_EXPORT_METHOD(getString:(RCTResponseSenderBlock)callback) {

  NSLog(@"Objc MyComponent getString");
  callback(@[[NSNull null], @"Objc getString-Result"]);
}

RCT_EXPORT_METHOD(getStringAsync:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject) {

  NSLog(@"Objc MyComponent getStringAsync");
  BOOL yesNo =  YES; //arc4random_uniform(2);
  if (yesNo) {
    resolve(@"Async Result- Yes");
  } else {
    reject([NSError errorWithDomain:@"NO!" code:0 userInfo:nil]);
  }

  [self sendEventToJS];
}

- (void)sendEventToJS {
  [self.bridge.eventDispatcher sendAppEventWithName:@"MyEvent"
                                               body:@{@"param": @"Hello JS"}];
}


@end
