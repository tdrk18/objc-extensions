//
//  UIColor+ExtensionTests.m
//  objc-extensionsTests
//
//  Created by tdrk18 on 2018/06/29.
//  Copyright © 2018 tdrk18. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UIColor+Extension.h"

@interface UIColor_ExtensionTests : XCTestCase

@end

@implementation UIColor_ExtensionTests

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

- (void)testColorWithByteRGBAndAlpha
{
    UIColor *expect, *actual;
    unsigned int base,  red, blue, green;

    base = 0xff0000;
    red   = base >> 16 & 0xFF;
    green = base >> 8  & 0xFF;
    blue  = base >> 0  & 0xFF;
    actual = [UIColor colorWithByteRed:red green:green blue:blue alpha:1.0];
    expect = [UIColor redColor];
    XCTAssertEqualObjects(actual, expect);

    base = 0x00ff00;
    red   = base >> 16 & 0xFF;
    green = base >> 8  & 0xFF;
    blue  = base >> 0  & 0xFF;
    actual = [UIColor colorWithByteRed:red green:green blue:blue alpha:1.0];
    expect = [UIColor greenColor];
    XCTAssertEqualObjects(actual, expect);

    base = 0x0000ff;
    red   = base >> 16 & 0xFF;
    green = base >> 8  & 0xFF;
    blue  = base >> 0  & 0xFF;
    actual = [UIColor colorWithByteRed:red green:green blue:blue alpha:1.0];
    expect = [UIColor blueColor];
    XCTAssertEqualObjects(actual, expect);

    base = 0xffffff;
    red   = base >> 16 & 0xFF;
    green = base >> 8  & 0xFF;
    blue  = base >> 0  & 0xFF;
    actual = [UIColor colorWithByteRed:red green:green blue:blue alpha:1.0];
    expect = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    XCTAssertEqualObjects(actual, expect);

    base = 0x000000;
    red   = base >> 16 & 0xFF;
    green = base >> 8  & 0xFF;
    blue  = base >> 0  & 0xFF;
    actual = [UIColor colorWithByteRed:red green:green blue:blue alpha:1.0];
    expect = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    XCTAssertEqualObjects(actual, expect);

    base = 0xffff00;
    red   = base >> 16 & 0xFF;
    green = base >> 8  & 0xFF;
    blue  = base >> 0  & 0xFF;
    actual = [UIColor colorWithByteRed:red green:green blue:blue alpha:1.0];
    expect = [UIColor yellowColor];
    XCTAssertEqualObjects(actual, expect);

    base = 0x00ffff;
    red   = base >> 16 & 0xFF;
    green = base >> 8  & 0xFF;
    blue  = base >> 0  & 0xFF;
    actual = [UIColor colorWithByteRed:red green:green blue:blue alpha:1.0];
    expect = [UIColor cyanColor];
    XCTAssertEqualObjects(actual, expect);

    base = 0xff00ff;
    red   = base >> 16 & 0xFF;
    green = base >> 8  & 0xFF;
    blue  = base >> 0  & 0xFF;
    actual = [UIColor colorWithByteRed:red green:green blue:blue alpha:1.0];
    expect = [UIColor magentaColor];
    XCTAssertEqualObjects(actual, expect);
}

- (void)testColorWithByteRGB
{
    UIColor *expect, *actual;
    unsigned int base,  red, blue, green;

    base = 0xff0000;
    red   = base >> 16 & 0xFF;
    green = base >> 8  & 0xFF;
    blue  = base >> 0  & 0xFF;
    actual = [UIColor colorWithByteRed:red green:green blue:blue];
    expect = [UIColor redColor];
    XCTAssertEqualObjects(actual, expect);

    base = 0x00ff00;
    red   = base >> 16 & 0xFF;
    green = base >> 8  & 0xFF;
    blue  = base >> 0  & 0xFF;
    actual = [UIColor colorWithByteRed:red green:green blue:blue];
    expect = [UIColor greenColor];
    XCTAssertEqualObjects(actual, expect);

    base = 0x0000ff;
    red   = base >> 16 & 0xFF;
    green = base >> 8  & 0xFF;
    blue  = base >> 0  & 0xFF;
    actual = [UIColor colorWithByteRed:red green:green blue:blue];
    expect = [UIColor blueColor];
    XCTAssertEqualObjects(actual, expect);

    base = 0xffffff;
    red   = base >> 16 & 0xFF;
    green = base >> 8  & 0xFF;
    blue  = base >> 0  & 0xFF;
    actual = [UIColor colorWithByteRed:red green:green blue:blue];
    expect = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    XCTAssertEqualObjects(actual, expect);

    base = 0x000000;
    red   = base >> 16 & 0xFF;
    green = base >> 8  & 0xFF;
    blue  = base >> 0  & 0xFF;
    actual = [UIColor colorWithByteRed:red green:green blue:blue];
    expect = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    XCTAssertEqualObjects(actual, expect);

    base = 0xffff00;
    red   = base >> 16 & 0xFF;
    green = base >> 8  & 0xFF;
    blue  = base >> 0  & 0xFF;
    actual = [UIColor colorWithByteRed:red green:green blue:blue];
    expect = [UIColor yellowColor];
    XCTAssertEqualObjects(actual, expect);

    base = 0x00ffff;
    red   = base >> 16 & 0xFF;
    green = base >> 8  & 0xFF;
    blue  = base >> 0  & 0xFF;
    actual = [UIColor colorWithByteRed:red green:green blue:blue];
    expect = [UIColor cyanColor];
    XCTAssertEqualObjects(actual, expect);

    base = 0xff00ff;
    red   = base >> 16 & 0xFF;
    green = base >> 8  & 0xFF;
    blue  = base >> 0  & 0xFF;
    actual = [UIColor colorWithByteRed:red green:green blue:blue];
    expect = [UIColor magentaColor];
    XCTAssertEqualObjects(actual, expect);
}

- (void)testColorWithHex
{
    UIColor *expect, *actual;
    unsigned int hex;

    hex = 0xff0000;
    actual = [UIColor colorWithHex:hex];
    expect = [UIColor redColor];
    XCTAssertEqualObjects(actual, expect);

    hex = 0x00ff00;
    actual = [UIColor colorWithHex:hex];
    expect = [UIColor greenColor];
    XCTAssertEqualObjects(actual, expect);

    hex = 0x0000ff;
    actual = [UIColor colorWithHex:hex];
    expect = [UIColor blueColor];
    XCTAssertEqualObjects(actual, expect);

    hex = 0xffffff;
    actual = [UIColor colorWithHex:hex];
    expect = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    XCTAssertEqualObjects(actual, expect);

    hex = 0x000000;
    actual = [UIColor colorWithHex:hex];
    expect = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    XCTAssertEqualObjects(actual, expect);

    hex = 0xffff00;
    actual = [UIColor colorWithHex:hex];
    expect = [UIColor yellowColor];
    XCTAssertEqualObjects(actual, expect);

    hex = 0x00ffff;
    actual = [UIColor colorWithHex:hex];
    expect = [UIColor cyanColor];
    XCTAssertEqualObjects(actual, expect);

    hex = 0xff00ff;
    actual = [UIColor colorWithHex:hex];
    expect = [UIColor magentaColor];
    XCTAssertEqualObjects(actual, expect);
}

@end
