//
//  UIColor+Extension.m
//  objc-extensions
//
//  Created by tdrk18 on 2018/06/29.
//  Copyright © 2018 tdrk18. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)

+ (UIColor *)colorWithByteRed:(unsigned int)red
                        green:(unsigned int)green
                         blue:(unsigned int)blue
                        alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:red   / 255.f
                           green:green / 255.f
                            blue:blue  / 255.f
                           alpha:alpha];
}

+ (UIColor *)colorWithByteRed:(unsigned int)red
                        green:(unsigned int)green
                         blue:(unsigned int)blue
{
    return [UIColor colorWithByteRed:red
                               green:green
                                blue:blue
                               alpha:1.0];
}

@end
