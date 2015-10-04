//
//  DateController.m
//  Test
//
//  Created by Denis on 30.09.15.
//  Copyright (c) 2015 Alx. All rights reserved.
//

#import "DateController.h"


@implementation DateController


static NSDate *curDate;
static NSArray *someDataArray;



+(void)addTimeAndData:(NSString *)timeDate data:(NSData *)data
{
    
    Date *date = [[Date alloc] init];
    [date setData:data];
    [date setDate:timeDate];
    
    
    NSMutableArray *ar = [[NSMutableArray alloc] initWithArray:someDataArray];
    [ar addObject:date];
    someDataArray = ar;
    
}


+(void)printDateAndData
{
    NSArray *week = [self getWeekDays];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *end = [NSDate date];
    
    for(Date *obj in someDataArray){
        
        NSDate *dateStart = [obj timeData];
        NSCalendarUnit units = NSCalendarUnitDay;
        NSDateComponents *components = [calendar components:units
                                                   fromDate:dateStart
                                                     toDate:end
                                                    options:0];
        NSInteger day = [components day];
       
        NSDate* date = dateStart;
        NSCalendar* cal = [NSCalendar currentCalendar];
        NSInteger dow = [cal ordinalityOfUnit:NSWeekdayCalendarUnit inUnit:NSWeekCalendarUnit forDate:date];
        NSInteger dow2 = [cal ordinalityOfUnit:NSWeekdayCalendarUnit inUnit:NSWeekCalendarUnit forDate:end];
        
        int cdow = abs((int)(dow-dow2));
        
        if (day < 7) {
            if (day == 0) {
                NSLog(@"Today %@", obj.data);
            } else
            if (cdow == 1 || cdow == 6) {
                NSLog(@"Yesterday %@", obj.data);
            }else
                NSLog(@"%@ %@", [week objectAtIndex:[self setDay:dow]], obj.data);
        }else {
            NSLog(@"%@ %@", date, obj.data);
        }

    }
    
}




+(NSArray *)getWeekDays
{

    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setLocale:[NSLocale currentLocale]];
    NSArray *weekDays = [dateFormat weekdaySymbols];

    return weekDays;
}

+(NSInteger)setDay:(NSInteger)day {
    
    switch (day) {
        case 1:
            return 7;
            break;
            
        default:
            return day-1;
            break;
    }
    return day;
}

@end
