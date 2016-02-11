
//
//  main.m
//  Ugly Objective-C
//
//  Created by Kostiantyn Koval on 08/02/16.
//  Copyright © 2016 Kostiantyn Koval. All rights reserved.
//

#import <Foundation/Foundation.h>

//Feature No. 1
#import "KKKStorage.h"
#import "KKKNetwork.h"

#import "KKKArticle.h"


typedef NS_ENUM(NSInteger, Mode) {
  ModeInMemory,
  ModeSqlite,
};

typedef NS_ENUM(NSInteger, LogLevel) {
  LogLevelVerbose,
  LogLevelNone
};

@interface CoreDataStack : NSObject
@end

@implementation CoreDataStack

- (void)setup {
  [self setupWithName:@""];
}

- (void)setupWithName:(NSString *)name {
  [self setupWithName:name mode:ModeSqlite];
}

- (void)setupWithName:(NSString *)name mode:(Mode)mode {
    [self setupWithName:name mode:ModeSqlite logeLevel:LogLevelVerbose];
}

- (void)setupWithName:(NSString *)name mode:(Mode)mode logeLevel:(LogLevel)logLevel {
  //...
}


@end

typedef NS_ENUM(NSInteger, Action) {
  ActionDelete,
  ActionCreate,
  ActionEdit,
  ActionCopy
};

//enum class Feelings {EXCITED, MOODY, BLUE};

@interface Runner : NSObject
+ (void)runAction:(Action)action;
@end

@implementation Runner

+ (void)runAction:(Action)action {
}


+ (void)No_77 {

  CoreDataStack *stack = [CoreDataStack new];
  [stack setup];
  [stack setupWithName:@"Data" mode:ModeInMemory];
  [stack setupWithName:@"Data" mode:ModeInMemory logeLevel:LogLevelNone];
  //[stack logeLevel:LogLevelNone]

}
+ (void)No_1 {

  KKKStorage * storage = [[KKKStorage alloc] init];
  [storage saveItem:@"New item"];

  KKKNetwork *network = [[KKKNetwork alloc] init];
  [network uploadItem:@"Some stuff"];

  //[network saveItem:@"Some stuff"];


  /*
   //Danger !!!!
   id network1 = [[KKKNetwork alloc] init];
   [network1 saveItem:@"😈"];

   [network1 arrayByAddingObjectsFromArray: @[ @10 ]];
   [network1 URLByAppendingPathComponent:@"/me.com"];

   [network performSelector: @selector(saveItem:)];
   */

  NSMutableArray *ar = [NSMutableArray arrayWithArray:@[@1, @1]];
  NSMutableArray *copy = [ar copy];
  [copy addObject: @2];

  [[network copy] saveItem:@"LOL"];
  [[network copy] arrayByAddingObjectsFromArray: @[ @10 ]];

}

+ (void)No_2 {

  id some;
  [some URLCache];
  [some stringByAppendingString:@":("];

}

//
+ (void)No_3 {
  KKKArticle *article = [[KKKArticle alloc] initWith:@"title" text:@"text" date:[NSDate date]];
}

+ (void)No_4 {
  NSString *a;
  [a stringByAppendingString:@"b"];
  //  [@"b" stringByAppendingString:a];


  //  [nil stringByAppendingString:@"b"];
  [(id)nil stringByAppendingString:@"b"];
  [a stringByAppendingString:nil];
}

//+ (void)No_5 {
//  NSInteger index = [@[@1, @2, @3] indexOfObject:@10];
//  if (index == 9223372036854775807) {
//    NSLog(@"Not Fount");
//  }
//}


+ (void)No_6 {

  Action action = ActionEdit;
  action += ActionCopy;
  action /= 56;

  [Runner runAction:action];
  [Runner runAction:ActionCreate];
  [Runner runAction:20];

}


+ (NSString *)actionString:(Action)action {

  switch (action) {
    case ActionDelete:
      return @"Delete";
    case ActionCreate:
      return @"Create";
    case ActionEdit:
      return @"Edit";
    case ActionCopy:
      return @"Copy";
  }
}

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    NSLog(@"Hello, World!");
    [Runner No_6];

  }
  return 0;
}



@end

