//
//  RCTMyViewManager.m
//  TryRN
//
//  Created by Kostiantyn Koval on 11/10/15.
//  Copyright © 2015 Facebook. All rights reserved.
//

#import "RCTMyViewManager.h"
#import "RCTBridge.h"
#import "RCTEventDispatcher.h"
#import "UIView+React.h"

@interface MyView : UIView

@property (nonatomic) BOOL myProperty;

@end

@implementation MyView


- (void)setMyProperty:(BOOL)myProperty {
  NSLog(@"setMyProperty");
}

@end


@implementation RCTMyViewManager

RCT_EXPORT_MODULE()

RCT_EXPORT_VIEW_PROPERTY(opaque, BOOL)
RCT_EXPORT_VIEW_PROPERTY(myProperty, BOOL)

RCT_CUSTOM_VIEW_PROPERTY(myCustomProp, Int, RCTViewManager) {
  NSLog(@"view: %@, defaultView: %@", view, defaultView);
}

- (instancetype)init
{
  self = [super init];
  if (self) {
    NSLog(@"RCTMyViewManager");
  }
  return self;
}

- (MyView *)view {

  NSLog(@"My Custom View");
  MyView *view = [[MyView  alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
  return view;
}

- (void)sendEvent:(MyView *)view {
  NSDictionary *event = @{
     @"target": view.reactTag,
     @"body" : @"Event Boby"
  };
  [self.bridge.eventDispatcher sendInputEventWithName:@"topFireNativeEvent" body:event];
}





@end
