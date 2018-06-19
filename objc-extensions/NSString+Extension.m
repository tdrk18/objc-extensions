//
//  NSString+Extension.m
//  objc-extensions
//
//  Created by tdrk18 on 2018/06/19.
//  Copyright © 2018 tdrk18. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

- (NSString *)trimmedWhiteSpace
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (BOOL)hasOnlyWhiteSpace
{
    return [[self trimmedWhiteSpace] length] == 0;
}

@end
