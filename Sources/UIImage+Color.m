//
//  UIImage+Color.m
//  TestCarthage
//
//  Created by kobe on 2016/12/10.
//  Copyright © 2016年 kobe. All rights reserved.
//

#import "UIImage+Color.h"

@implementation UIImage (Color)
+ (UIImage *)imageWithHahaColor:(UIColor *)color {
    return [self imageWithColor:color];
}

+ (UIImage *)imageWithColor:(UIColor *)color {
    if (!color) {
        return nil;
    }
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
