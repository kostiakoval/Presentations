//
//  MyComponent.h
//  AwesomeProject
//
//  Created by Kostiantyn Koval on 05/10/15.
//  Copyright © 2015 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RCTBridgeModule.h"

@interface MyComponent : NSObject<RCTBridgeModule>

- (void)sendString:(NSString *)name;

@end
