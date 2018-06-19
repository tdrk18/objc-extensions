//
//  NSString+ExtensionTests.m
//  objc-extensionsTests
//
//  Created by tdrk18 on 2018/06/19.
//  Copyright © 2018 tdrk18. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+Extension.h"

@interface NSStringExtensionTests : XCTestCase

@end

@implementation NSStringExtensionTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testTrimmedWhiteSpace
{
    NSString *expect, *actual, *string;

    string = @"";
    expect = @"";
    actual = [string trimmedWhiteSpace];
    XCTAssertEqualObjects(expect, actual);

    string = @"   ";
    expect = @"";
    actual = [string trimmedWhiteSpace];
    XCTAssertEqualObjects(expect, actual);

    string = @" tdrk18 ";
    expect = @"tdrk18";
    actual = [string trimmedWhiteSpace];
    XCTAssertEqualObjects(expect, actual);
}

- (void)testHasOnlyWhiteSpace
{
    NSString *string;
    BOOL expect, actual;

    string = @"";
    expect = YES;
    actual = [string hasOnlyWhiteSpace];
    XCTAssertEqual(expect, actual);

    string = @"   ";
    expect = YES;
    actual = [string hasOnlyWhiteSpace];
    XCTAssertEqual(expect, actual);

    string = @" tdrk18 ";
    expect = NO;
    actual = [string hasOnlyWhiteSpace];
    XCTAssertEqual(expect, actual);
}

@end
