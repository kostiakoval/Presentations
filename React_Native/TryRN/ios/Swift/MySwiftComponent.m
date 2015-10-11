//
//  RCTConvert+MySwiftComponent.m
//  TryRN
//
//  Created by Kostiantyn Koval on 10/10/15.
//  Copyright © 2015 Facebook. All rights reserved.
//

#import "RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(MySwiftComponent, NSObject)

RCT_EXTERN_METHOD(sendString:(NSString *)x)
RCT_EXTERN_METHOD(getString:(RCTResponseSenderBlock)response)
RCT_EXTERN_METHOD(getStringAsync:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject)

@end
