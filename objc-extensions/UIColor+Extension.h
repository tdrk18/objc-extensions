//
//  UIColor+Extension.h
//  objc-extensions
//
//  Created by tdrk18 on 2018/06/29.
//  Copyright © 2018 tdrk18. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extension)

+ (UIColor *)colorWithByteRed:(unsigned int)red
                        green:(unsigned int)green
                         blue:(unsigned int)blue
                        alpha:(CGFloat)alpha;
+ (UIColor *)colorWithByteRed:(unsigned int)red
                        green:(unsigned int)green
                         blue:(unsigned int)blue;

+ (UIColor *)colorWithHex:(unsigned int)hex alpha:(CGFloat)alpha;
+ (UIColor *)colorWithHex:(unsigned int)hex;

@end
