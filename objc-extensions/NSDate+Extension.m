//
//  NSDate+Extension.m
//  objc-extensions
//
//  Created by tdrk18 on 2018/07/03.
//  Copyright © 2018年 tdrk18. All rights reserved.
//

#import "NSDate+Extension.h"

@implementation NSDate (Extension)

static NSDateFormatter *dateFormatter;

#pragma mark - initializer
+ (void)initialize
{
    dateFormatter = [[NSDateFormatter alloc] init];
}

#pragma mark - class methods
+ (NSDate *)dateFromISOString:(NSString *)isoString
{
    NSString *format = @"yyyy-MM-dd HH:mm:ss";
    NSString *locale = @"en_US";
    NSDateFormatter *isoDateFormatter = [self formatterWithFormat:format locale:locale];
    return [isoDateFormatter dateFromString:isoString];
}

+ (NSDate *)dateFromISODayString:(NSString *)isoString
{
    NSString *format = @"yyyy-MM-dd";
    NSString *locale = @"en_US";
    NSDateFormatter *isoDateFormatter = [self formatterWithFormat:format locale:locale];
    return [isoDateFormatter dateFromString:isoString];
}

#pragma mark - instance methods
- (NSString *)toISOString
{
    NSString *format = @"yyyy-MM-dd HH:mm:ss";
    NSString *locale = @"en_US";
    NSDateFormatter *isoDateFormatter = [NSDate formatterWithFormat:format locale:locale];
    return [isoDateFormatter stringFromDate:self];
}

- (NSString *)toISODayString
{
    NSString *format = @"yyyy-MM-dd";
    NSString *locale = @"en_US";
    NSDateFormatter *isoDateFormatter = [NSDate formatterWithFormat:format locale:locale];
    return [isoDateFormatter stringFromDate:self];
}

- (NSString *)toYMDString
{
    NSString *format = @"yyyy年M月d日";
    NSString *locale = @"ja_JP";
    NSDateFormatter *isoDateFormatter = [NSDate formatterWithFormat:format locale:locale];
    return [isoDateFormatter stringFromDate:self];
}

- (NSString *)toYMDTimeString
{
    NSString *format = @"yyyy年M月d日 H:mm";
    NSString *locale = @"ja_JP";
    NSDateFormatter *isoDateFormatter = [NSDate formatterWithFormat:format locale:locale];
    return [isoDateFormatter stringFromDate:self];
}

- (NSString *)toYMString
{
    NSString *format = @"yyyy年M月";
    NSString *locale = @"ja_JP";
    NSDateFormatter *isoDateFormatter = [NSDate formatterWithFormat:format locale:locale];
    return [isoDateFormatter stringFromDate:self];
}

- (NSString *)toMDString
{
    NSString *format = @"M月d日";
    NSString *locale = @"ja_JP";
    NSDateFormatter *isoDateFormatter = [NSDate formatterWithFormat:format locale:locale];
    return [isoDateFormatter stringFromDate:self];
}

- (NSString *)toMDTimeString
{
    NSString *format = @"M月d日 H:mm";
    NSString *locale = @"ja_JP";
    NSDateFormatter *isoDateFormatter = [NSDate formatterWithFormat:format locale:locale];
    return [isoDateFormatter stringFromDate:self];
}

#pragma mark - private methods
+ (NSDateFormatter *)formatterWithFormat:(NSString *)format
                                  locale:(NSString *)locale
{
    [dateFormatter setDateFormat:format];
    [dateFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:locale]];
    return dateFormatter;
}

@end
