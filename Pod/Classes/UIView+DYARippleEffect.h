//
//  UIView+DYARippleEffect.h
//  Pods
//
//  Created by David Yang on 11/02/2016.
//
//

#import <UIKit/UIKit.h>

@interface UIView (DYARippleEffect)

@property (strong, nonatomic) UIColor *rippleColor;
@property (strong, nonatomic) UIColor *rippleTrailColor;

- (void)dya_ripple;

@end
