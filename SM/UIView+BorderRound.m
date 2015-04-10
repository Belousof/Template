//
//  UIView+BorderRound.m
//  SM
//
//  Created by Andrey Belousov on 10.04.15.
//  Copyright (c) 2015 Andrey Belousov. All rights reserved.
//

#import "UIView+BorderRound.h"

@implementation UIView (BorderRound)
- (void)roundMyView:(UIView*)view
       borderRadius:(CGFloat)radius
        borderWidth:(CGFloat)border
              color:(UIColor*)color{
    
    CALayer *layer = [view layer];
    layer.masksToBounds = YES;
    layer.cornerRadius = radius;
    layer.borderWidth = border;
    layer.borderColor = color.CGColor;
}
@end
