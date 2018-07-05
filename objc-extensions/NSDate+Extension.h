//
//  NSDate+Extension.h
//  objc-extensions
//
//  Created by tdrk18 on 2018/07/03.
//  Copyright © 2018年 tdrk18. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Extension)

+ (NSDate *)dateFromISOString:(NSString *)isoString;
+ (NSDate *)dateFromISODayString:(NSString *)isoString;

- (NSString *)toISOString;
- (NSString *)toISODayString;
- (NSString *)toYMDString;
- (NSString *)toYMString;
- (NSString *)toMDString;

@end
