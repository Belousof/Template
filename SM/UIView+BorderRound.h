//
//  UIView+BorderRound.h
//  SM
//
//  Created by Andrey Belousov on 10.04.15.
//  Copyright (c) 2015 Andrey Belousov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
@interface UIView (BorderRound)
- (void)roundMyView:(UIView*)view
       borderRadius:(CGFloat)radius
        borderWidth:(CGFloat)border
              color:(UIColor*)color;
@end
