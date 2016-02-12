//
//  DYAViewController.m
//  DYARippleView
//
//  Created by david.yang on 02/11/2016.
//  Copyright (c) 2016 david.yang. All rights reserved.
//

#import "DYAViewController.h"
#import "UIView+DYARippleEffect.h"

@interface DYAViewController ()

@property (weak, nonatomic) IBOutlet UIView *rippleView;
@property (weak, nonatomic) IBOutlet UIButton *rippleButton;

@end

@implementation DYAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    self.rippleView.layer.borderColor = [UIColor blueColor].CGColor;
    self.rippleView.layer.borderWidth = 1.;
    self.rippleView.layer.cornerRadius = self.rippleView.frame.size.height / 2.;
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(doRipple) userInfo:nil repeats:YES];

    self.rippleButton.layer.cornerRadius = self.rippleButton.frame.size.width / 2.;
    self.rippleButton.layer.borderColor = [UIColor cyanColor].CGColor;
    self.rippleButton.layer.borderWidth = 1.0f;
}

- (void)doRipple {
    [self.rippleView dya_rippleWithSettings:@{ DYARippleEffectColor : [UIColor magentaColor],
                                               DYARippleEffectTrailColor : [[UIColor magentaColor] colorWithAlphaComponent:0.6],
                                               DYARippleEffectLineWidth : @1.,
                                               DYARippleEffectAnimationDuration : @2.,
                                               DYARippleEffectSize : @2 }];
}

- (IBAction)buttonTapped:(id)sender {
    [self.rippleButton dya_rippleWithSettings:@{ DYARippleEffectColor : [UIColor blueColor],
                                                 DYARippleEffectTrailColor : [[UIColor redColor] colorWithAlphaComponent:0.6],
                                                 DYARippleEffectLineWidth : @1.,
                                                 DYARippleEffectAnimationDuration : @2.,
                                                 DYARippleEffectSize : @2 }];
}

@end
