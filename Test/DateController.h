//
//  DateController.h
//  Test
//
//  Created by Denis on 30.09.15.
//  Copyright (c) 2015 Alx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Date.h"

@interface DateController : NSObject

+(void)addTimeAndData:(NSString *)timeDate data:(NSData *)data;
+(void)printDateAndData;
@end
