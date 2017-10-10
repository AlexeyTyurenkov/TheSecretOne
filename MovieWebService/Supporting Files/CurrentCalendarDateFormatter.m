//
//  CurrentCalendarDateFormatter.m
//  MovieWebService
//
//  Created by Oleksii Tiurenkov on 10/10/17.
//  Copyright © 2017 TestCompany. All rights reserved.
//

#import "CurrentCalendarDateFormatter.h"

@interface CurrentCalendarDateFormatter ()
{
    NSCalendar* calendar;
    NSDateFormatter* formatter;
}


@end


@implementation CurrentCalendarDateFormatter

- (NSString*)stringFromDate:(NSDate*)date
{
    return [formatter stringFromDate:date];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        calendar = [NSCalendar new];
        formatter = [NSDateFormatter new];
        formatter.calendar = calendar;
        formatter.dateFormat = @"MMM dd, yyyy";
    }
    return self;
}


@end
