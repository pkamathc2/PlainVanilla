//
//  ViewController.h
//  iOSTestApp
//
//  Created by Ricardo Bedoya on 1/20/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *mainSliderBar;
@property (weak, nonatomic) IBOutlet UILabel *mainTextLabel;

- (IBAction)sliderChanged:(id)sender;

@end

