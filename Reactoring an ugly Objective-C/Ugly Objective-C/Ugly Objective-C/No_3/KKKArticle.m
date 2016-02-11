//
//  Article.m
//  Ugly Objective-C
//
//  Created by Kostiantyn Koval on 08/02/16.
//  Copyright © 2016 Kostiantyn Koval. All rights reserved.
//

#import "KKKArticle.h"

@implementation KKKArticle

- (instancetype)init {
  return [self init];
}

//- (instancetype)init {
//  return 0;
//}


//- (instancetype)init {
//  self = [super init];
//  if (self) {
//
//  }
//  return self;
//}

- (instancetype)initWith:(NSString *)title text:(NSString *)text date:(NSDate *)date {
  self = [super init];
  if (self) {
    _title = title;
    _text = text;
    _date = date;
  }
  return self;
}


@end
