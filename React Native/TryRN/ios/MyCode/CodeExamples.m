//
//  CodeExamples.m
//  AwesomeProject
//
//  Created by Kostiantyn Koval on 08/10/15.
//  Copyright © 2015 Facebook. All rights reserved.
//
@import UIKit;

#import "CodeExamples.h"

@interface MyCell : UITableViewCell
@end

@implementation MyCell

@end


@implementation CodeExamples

+ (void)example_NativeApp {

  UITextView *textView = [UITextView new];
  textView.text = @"Welcome to React Native!";

  UITableView *tableView = [UITableView new];
  tableView.dataSource = self;
  [tableView registerClass:[MyCell class] forCellReuseIdentifier:@"MyCellId"];
  
}



@end
