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

    self.rippleView.layer.borderColor = [UIColor redColor].CGColor;
    self.rippleView.layer.borderWidth = 1.;
    self.rippleView.layer.cornerRadius = self.rippleView.frame.size.height / 2.;

    self.rippleView.rippleColor = [UIColor redColor];
    self.rippleView.rippleTrailColor = [[UIColor orangeColor] colorWithAlphaComponent:0.6];

    [NSTimer scheduledTimerWithTimeInterval:1. target:self selector:@selector(doRipple) userInfo:nil repeats:YES];
}

- (void)doRipple {
    [self.rippleView dya_ripple];
}

@end
