//
//  NSArray+ExtensionTests.m
//  objc-extensionsTests
//
//  Created by tdrk18 on 2018/06/19.
//  Copyright © 2018 tdrk18. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSArray+Extension.h"

@interface NSArrayExtensionTests : XCTestCase

@end

@implementation NSArrayExtensionTests

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

- (void)testReverse
{
    NSArray *expect, *actual, *array;

    array = @[];
    expect = @[];
    actual = [array reverse];
    XCTAssertEqualObjects(expect, actual);

    array = @[@1, @2, @3, @4];
    expect = @[@4, @3, @2, @1];
    actual = [array reverse];
    XCTAssertEqualObjects(expect, actual);

    array = @[@1, @3, @5, @7, @1];
    expect = @[@1, @7, @5, @3, @1];
    actual = [array reverse];
    XCTAssertEqualObjects(expect, actual);
}

@end
