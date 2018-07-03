//
//  NSDate+ExtensionTests.m
//  objc-extensionsTests
//
//  Created by tdrk18 on 2018/07/03.
//  Copyright © 2018年 tdrk18. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSDate+Extension.h"

@interface NSDateExtensionTests : XCTestCase

@end

@implementation NSDateExtensionTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

#pragma mark - tests for class methods
- (void)testDateFromISOString
{
    NSString *dateString;
    NSDate *expect, *actual;

    dateString = @"1970-01-01 00:00:00";
    expect = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    actual = [NSDate dateFromISOString:dateString];
    XCTAssertEqualObjects(expect, actual);
}

#pragma mark - tests for instance methods
- (void)testToISOString
{
    NSDate *date;
    NSString *expect, *actual;

    date = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    expect = @"1970-01-01 00:00:00";
    actual = [date toISOString];
    XCTAssertEqualObjects(expect, actual);
}

#pragma mark - private methods
- (NSDate *)toGlobalTime:(NSDate *)date
{
    NSInteger seconds = [[NSTimeZone defaultTimeZone] secondsFromGMTForDate:date];
    return [[NSDate alloc] initWithTimeInterval:seconds sinceDate:date];
}

- (NSDate *)toLocalTime:(NSDate *)date
{
    NSInteger seconds = [[NSTimeZone defaultTimeZone] secondsFromGMTForDate:date];
    return [[NSDate alloc] initWithTimeInterval:(-seconds) sinceDate:date];
}

@end