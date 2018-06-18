//
//  NSNumber+ExtensionTests.m
//  objc-extensionsTests
//
//  Created by tdrk18 on 2018/06/18.
//  Copyright © 2018 tdrk18. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSNumber+Extension.h"

@interface NSNumberExtensionTests : XCTestCase

@end

@implementation NSNumberExtensionTests

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

- (void)testCommaSeparatedString
{
    NSNumber *number;
    NSString *expect, *actual;

    number = @(500);
    expect = @"500";
    actual = number.commaSeparatedString;
    XCTAssertEqualObjects(expect, actual);

    number = @(5000);
    expect = @"5,000";
    actual = number.commaSeparatedString;
    XCTAssertEqualObjects(expect, actual);

    number = @(5000000);
    expect = @"5,000,000";
    actual = number.commaSeparatedString;
    XCTAssertEqualObjects(expect, actual);
}

@end
