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
    formatter.numberStyle = NSNumberFormatterDecimalStyle;
    return [formatter stringFromNumber:self];
}

- (NSString *)JPYString
{
    formatter.numberStyle = NSNumberFormatterDecimalStyle;
    return [NSString stringWithFormat:@"¥%@", [formatter stringFromNumber:self]];
}

@end
