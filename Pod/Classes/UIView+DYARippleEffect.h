//
//  UIView+DYARippleEffect.h
//  Pods
//
//  Created by David Yang on 11/02/2016.
//
//

#import <UIKit/UIKit.h>

extern NSString *const DYARippleEffectColor;
extern NSString *const DYARippleEffectTrailColor;
extern NSString *const DYARippleEffectLineWidth;
extern NSString *const DYARippleEffectAnimationDuration;
extern NSString *const DYARippleEffectSize;

@interface UIView (DYARippleEffect)

- (void)dya_rippleWithSettings:(NSDictionary *)settings;

@end
