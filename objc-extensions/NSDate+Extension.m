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
+ (NSDate *)dateWithString:(NSString *)string
                    format:(NSString *)format
                    locale:(NSString *)locale
{
    NSDateFormatter *formatter = [self formatterWithFormat:format locale:locale];
    return [formatter dateFromString:string];
}

+ (NSDate *)dateFromISOString:(NSString *)isoString
{
    NSString *format = @"yyyy-MM-dd HH:mm:ss";
    NSString *locale = @"en_US";
    return [self dateWithString:isoString format:format locale:locale];
}

+ (NSDate *)dateFromISODayString:(NSString *)isoString
{
    NSString *format = @"yyyy-MM-dd";
    NSString *locale = @"en_US";
    return [self dateWithString:isoString format:format locale:locale];
}

#pragma mark - instance methods
- (NSString *)toStringWithFormat:(NSString *)format
                          locale:(NSString *)locale
{
    NSDateFormatter *formatter = [NSDate formatterWithFormat:format locale:locale];
    return [formatter stringFromDate:self];
}

- (NSString *)toISOString
{
    NSString *format = @"yyyy-MM-dd HH:mm:ss";
    NSString *locale = @"en_US";
    return [self toStringWithFormat:format locale:locale];
}

- (NSString *)toISODayString
{
    NSString *format = @"yyyy-MM-dd";
    NSString *locale = @"en_US";
    return [self toStringWithFormat:format locale:locale];
}

- (NSString *)toYMDString
{
    NSString *format = @"yyyy年M月d日";
    NSString *locale = @"ja_JP";
    return [self toStringWithFormat:format locale:locale];
}

- (NSString *)toYMDTimeString
{
    NSString *format = @"yyyy年M月d日 H:mm";
    NSString *locale = @"ja_JP";
    return [self toStringWithFormat:format locale:locale];
}

- (NSString *)toYMString
{
    NSString *format = @"yyyy年M月";
    NSString *locale = @"ja_JP";
    return [self toStringWithFormat:format locale:locale];
}

- (NSString *)toMDString
{
    NSString *format = @"M月d日";
    NSString *locale = @"ja_JP";
    return [self toStringWithFormat:format locale:locale];
}

- (NSString *)toMDTimeString
{
    NSString *format = @"M月d日 H:mm";
    NSString *locale = @"ja_JP";
    return [self toStringWithFormat:format locale:locale];
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
