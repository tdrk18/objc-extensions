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

- (void)testDateFromISODayString
{
    NSString *dateString;
    NSDate *expect, *actual;

    dateString = @"1970-01-01";
    expect = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    actual = [NSDate dateFromISODayString:dateString];
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

- (void)testToISODayString
{
    NSDate *date;
    NSString *expect, *actual;

    date = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    expect = @"1970-01-01";
    actual = [date toISODayString];
    XCTAssertEqualObjects(expect, actual);
}

- (void)testToYMDString
{
    NSDate *date;
    NSString *expect, *actual;

    date = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    expect = @"1970年1月1日";
    actual = [date toYMDString];
    XCTAssertEqualObjects(expect, actual);
}

- (void)testToYMDTimeString
{
    NSDate *date;
    NSString *expect, *actual;

    date = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    expect = @"1970年1月1日 0:00";
    actual = [date toYMDTimeString];
    XCTAssertEqualObjects(expect, actual);
}

- (void)testToYMString
{
    NSDate *date;
    NSString *expect, *actual;

    date = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    expect = @"1970年1月";
    actual = [date toYMString];
    XCTAssertEqualObjects(expect, actual);
}

- (void)testToMDString
{
    NSDate *date;
    NSString *expect, *actual;

    date = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    expect = @"1月1日";
    actual = [date toMDString];
    XCTAssertEqualObjects(expect, actual);
}

- (void)testToMDTimeString
{
    NSDate *date;
    NSString *expect, *actual;

    date = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    expect = @"1月1日 0:00";
    actual = [date toMDTimeString];
    XCTAssertEqualObjects(expect, actual);
}

- (void)testStartOfDay
{
    NSDate *expect, *actual, *date;

    date = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    expect = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    actual = [date startOfDay];
    XCTAssertEqualObjects(expect, actual);
}

- (void)testEndOfDay
{
    NSDate *expect, *actual, *date;

    date = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    expect = [[self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]] dateByAddingTimeInterval:(60 * 60 * 24 - 1)];
    actual = [date endOfDay];
    XCTAssertEqualObjects(expect, actual);
}

- (void)testIsBefore
{
    NSDate *date1, *date2;
    BOOL expect, actual;

    date1 = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    date2 = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    expect = NO;
    actual = [date1 isBefore:date2];
    XCTAssertEqual(expect, actual);

    date1 = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    date2 = [[self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]] dateByAddingTimeInterval:-1];
    expect = NO;
    actual = [date1 isBefore:date2];
    XCTAssertEqual(expect, actual);

    date1 = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    date2 = [[self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]] dateByAddingTimeInterval:1];
    expect = YES;
    actual = [date1 isBefore:date2];
    XCTAssertEqual(expect, actual);
}

- (void)testIsAfter
{
    NSDate *date1, *date2;
    BOOL expect, actual;

    date1 = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    date2 = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    expect = NO;
    actual = [date1 isAfter:date2];
    XCTAssertEqual(expect, actual);

    date1 = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    date2 = [[self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]] dateByAddingTimeInterval:-1];
    expect = YES;
    actual = [date1 isAfter:date2];
    XCTAssertEqual(expect, actual);

    date1 = [self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]];
    date2 = [[self toLocalTime:[[NSDate alloc] initWithTimeIntervalSince1970:0]] dateByAddingTimeInterval:1];
    expect = NO;
    actual = [date1 isAfter:date2];
    XCTAssertEqual(expect, actual);
}

- (void)testIsFuture
{
    NSDate *date;
    BOOL expect, actual;

    date = [[NSDate alloc] initWithTimeIntervalSinceNow:0];
    expect = NO;
    actual = [date isFuture];
    XCTAssertEqual(expect, actual);

    date = [[NSDate alloc] initWithTimeIntervalSinceNow:-3600 * 10];
    expect = NO;
    actual = [date isFuture];
    XCTAssertEqual(expect, actual);

    date = [[NSDate alloc] initWithTimeIntervalSinceNow:3600 * 10];
    expect = YES;
    actual = [date isFuture];
    XCTAssertEqual(expect, actual);
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
