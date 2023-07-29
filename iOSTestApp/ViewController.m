//
//  ViewController.m
//  iOSTestApp
//
//  Created by Ricardo Bedoya on 1/20/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@interface _UIVisualEffectConfig : NSObject
@end

@interface UITextLabel : NSObject
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // ADDING THE PRIVATE API
    NSLog(@"_UIVisualEffectConfig: %p", [_UIVisualEffectConfig class]);
    NSLog(@"UITextLabel: %p", [UITextLabel class]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)sliderChanged:(id)sender {
    
    if (self.mainSliderBar.value >= 0 && self.mainSliderBar.value <= 0.25) {
        self.mainTextLabel.textColor = [UIColor whiteColor];
        self.view.backgroundColor = [UIColor blueColor];
    } else if (self.mainSliderBar.value > 0.25 && self.mainSliderBar.value <= 0.5) {
        self.mainTextLabel.textColor = [UIColor blackColor];
        self.view.backgroundColor = [UIColor greenColor];
    } else if (self.mainSliderBar.value > 0.5 && self.mainSliderBar.value <= 0.75) {
        self.mainTextLabel.textColor = [UIColor blackColor];
        self.view.backgroundColor = [UIColor yellowColor];
    } else {
        self.mainTextLabel.textColor = [UIColor whiteColor];
        self.view.backgroundColor = [UIColor redColor];
    }
}


@end
