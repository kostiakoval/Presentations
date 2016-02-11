//
//  Storage.m
//  Ugly Objective-C
//
//  Created by Kostiantyn Koval on 08/02/16.
//  Copyright © 2016 Kostiantyn Koval. All rights reserved.
//

#import "KKKStorage.h"

@implementation KKKStorage

//No_3
//- (instancetype)init {
//  return [KKKStorage new];
//}


- (instancetype)init {
  self = [super init];
  if (self) {
      //Init storage
  }

  return self;
}



- (void)saveItem:(NSString *)item {
    NSLog(@"saveItem");
}

@end
