//
//  NSDate+Extension.h
//  objc-extensions
//
//  Created by tdrk18 on 2018/07/03.
//  Copyright © 2018年 tdrk18. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Extension)

+ (NSDate *)dateWithString:(NSString *)string
                    format:(NSString *)format
                    locale:(NSString *)locale;

+ (NSDate *)dateFromISOString:(NSString *)isoString;
+ (NSDate *)dateFromISODayString:(NSString *)isoString;

- (NSString *)toStringWithFormat:(NSString *)format
                          locale:(NSString *)locale;

- (NSString *)toISOString;
- (NSString *)toISODayString;
- (NSString *)toYMDString;
- (NSString *)toYMDTimeString;
- (NSString *)toYMString;
- (NSString *)toMDString;
- (NSString *)toMDTimeString;

- (NSDate *)startOfDay;
- (NSDate *)endOfDay;

@end
