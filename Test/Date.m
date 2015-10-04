//
//  Date.m
//  Test
//
//  Created by Denis on 30.09.15.
//  Copyright (c) 2015 Alx. All rights reserved.
//

#import "Date.h"



@implementation Date



-(NSString *)dataToStr:(NSData *)data{
    
    NSString* dataStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    return dataStr;
}

-(void)setDate:(NSString *)timeData
{

    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    NSDate *date = [dateFormat dateFromString:timeData];
    _timeData = date;
}

-(void)setData:(NSData *)data
{

    _data = [self dataToStr:data];
}



@end
