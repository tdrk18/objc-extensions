//
//  NSArray+Extension.m
//  objc-extensions
//
//  Created by tdrk18 on 2018/06/19.
//  Copyright © 2018 tdrk18. All rights reserved.
//

#import "NSArray+Extension.h"

@implementation NSArray (Extension)

- (NSArray *)reverse
{
    return [[self reverseObjectEnumerator] allObjects];
}

- (NSArray *)sortAsc
{
    NSSortDescriptor *descriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    return [self sortedArrayUsingDescriptors:@[descriptor]];
}

@end
