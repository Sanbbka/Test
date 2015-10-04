//
//  Date.h
//  Test
//
//  Created by Denis on 30.09.15.
//  Copyright (c) 2015 Alx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Date : NSObject

@property(nonatomic, readwrite, setter=setDate:) NSDate *timeData;
@property(nonatomic, readwrite, setter=setData:) NSString *data;

-(void)setDate:(NSString *)timeData;
-(void)setData:(NSData *)data;

@end
