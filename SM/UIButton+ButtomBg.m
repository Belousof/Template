//
//  UIButton+ButtomBg.m
//  SM
//
//  Created by Andrey Belousov on 10.04.15.
//  Copyright (c) 2015 Andrey Belousov. All rights reserved.
//

#import "UIButton+ButtomBg.h"

@implementation UIButton (ButtomBg)
+(UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
@end
