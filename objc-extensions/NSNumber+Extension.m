//
//  NSNumber+Extension.m
//  objc-extensions
//
//  Created by tdrk18 on 2018/06/18.
//  Copyright © 2018 tdrk18. All rights reserved.
//

#import "NSNumber+Extension.h"

@implementation NSNumber (Extension)

static NSNumberFormatter *formatter;

+ (void)initialize
{
    formatter = [[NSNumberFormatter alloc] init];
}

- (NSString *)commaSeparatedString
{
    return [self formattedStringWithStyle:NSNumberFormatterDecimalStyle
                         localeIdentifier:@"ja_JP"];
}

- (NSString *)JPYString
{
    return [self formattedStringWithStyle:NSNumberFormatterCurrencyStyle
                         localeIdentifier:@"ja_JP"];
}

- (NSString *)USDString
{
    return [self formattedStringWithStyle:NSNumberFormatterCurrencyStyle
                         localeIdentifier:@"en_US"];
}

- (NSString *)formattedStringWithStyle:(NSNumberFormatterStyle)style
                      localeIdentifier:(NSString *)identifier
{
    formatter.numberStyle = style;
    formatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:identifier];
    return [formatter stringFromNumber:self];
}

@end
