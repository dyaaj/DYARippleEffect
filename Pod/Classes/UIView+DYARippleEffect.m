//
//  UIView+DYARippleEffect.m
//  Pods
//
//  Created by David Yang on 11/02/2016.
//
//

#import "UIView+DYARippleEffect.h"

NSString *const DYARippleEffectColor = @"DYARippleEffectColor";
NSString *const DYARippleEffectTrailColor = @"DYARippleEffectTrailColor";
NSString *const DYARippleEffectLineWidth = @"DYARippleEffectLineWidth";
NSString *const DYARippleEffectAnimationDuration = @"DYARippleEffectAnimationDuration";
NSString *const DYARippleEffectSize = @"DYARippleEffectSize";

static CGFloat defaultLineWidth = 2.0f;
static CGFloat defaultAnimationDuration = 2.0f;
static CGFloat defaultRippleSize = 2.5f;

@interface UIView ()
@end

@implementation UIView (DYARippleEffect)

- (void)dya_rippleWithSettings:(NSDictionary *)settings {
    UIColor *rippleColor = settings[DYARippleEffectColor];
    UIColor *trailColor = settings[DYARippleEffectTrailColor];
    CGFloat lineWidth = settings[DYARippleEffectLineWidth] ? [settings[DYARippleEffectLineWidth] floatValue] : defaultLineWidth;
    CGFloat animationDuration = settings[DYARippleEffectAnimationDuration] ? [settings[DYARippleEffectAnimationDuration] floatValue] : defaultAnimationDuration;
    CGFloat size = settings[DYARippleEffectSize] ? [settings[DYARippleEffectSize] floatValue] : defaultRippleSize;

    CGRect pathFrame = CGRectMake(-CGRectGetMidX(self.bounds), -CGRectGetMidY(self.bounds), self.bounds.size.width, self.bounds.size.height);
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:pathFrame cornerRadius:self.layer.cornerRadius];
    CGPoint shapePosition = [self convertPoint:self.center fromView:nil];

    CAShapeLayer *circleShape = [CAShapeLayer layer];
    circleShape.path = path.CGPath;
    circleShape.position = shapePosition;
    circleShape.fillColor = trailColor.CGColor;
    circleShape.opacity = 0;
    circleShape.strokeColor = rippleColor.CGColor;
    circleShape.lineWidth = lineWidth;

    [self.layer addSublayer:circleShape];

    CABasicAnimation *scaleAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    scaleAnimation.fromValue = [NSValue valueWithCATransform3D:CATransform3DIdentity];
    scaleAnimation.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(size, size, 1)];

    CABasicAnimation *alphaAnimation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    alphaAnimation.fromValue = @1;
    alphaAnimation.toValue = @0;

    CAAnimationGroup *animation = [CAAnimationGroup animation];
    animation.animations = @[ scaleAnimation, alphaAnimation ];
    animation.duration = animationDuration;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    [circleShape addAnimation:animation forKey:nil];
}

@end
