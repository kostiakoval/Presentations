//
//  Article.h
//  Ugly Objective-C
//
//  Created by Kostiantyn Koval on 08/02/16.
//  Copyright © 2016 Kostiantyn Koval. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KKKArticle : NSObject

@property (nonatomic, readonly, strong) NSString *title;
@property (nonatomic, readonly, strong) NSString *text;
@property (nonatomic, readonly, strong) NSDate *date;

- (instancetype)initWith:(NSString *)title text:(NSString *)text date:(NSDate *)date;

@end

