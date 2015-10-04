//
//  ViewController.m
//  Test
//
//  Created by Denis on 30.09.15.
//  Copyright (c) 2015 Alx. All rights reserved.
//

#import "ViewController.h"
#import "Date.h"
#import "DateController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSString *myString = @"ksadkasdjkb";
    NSData* data = [myString dataUsingEncoding:NSUTF8StringEncoding];

    NSString *myString1 = @"ksadkasdjkb";
    NSData* data1 = [myString1 dataUsingEncoding:NSUTF8StringEncoding];

    NSString *myString2 = @"ksadkasdjkb";
    NSData* data2 = [myString2 dataUsingEncoding:NSUTF8StringEncoding];

    NSString *myString3 = @"ksadkasdjkb";
    NSData* data3 = [myString3 dataUsingEncoding:NSUTF8StringEncoding];

    NSString *myString4 = @"ksadkasdjkb";
    NSData* data4 = [myString4 dataUsingEncoding:NSUTF8StringEncoding];

    
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    
    [dateFormat setDateFormat:@"yyyy-MM-dd"];
    
    [DateController addTimeAndData: @"2015-10-03" data:data];
    [DateController addTimeAndData: @"2015-10-02" data:data1];
    [DateController addTimeAndData: @"2015-7-01" data:data2];
    [DateController addTimeAndData: @"2014-10-04" data:data3];
    [DateController addTimeAndData: @"2015-1-14" data:data4];
    
    
    [DateController printDateAndData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
