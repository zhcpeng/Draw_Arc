//
//  ViewController.h
//  iPhone_SingleView
//
//  Created by SKYA03  on 14-1-25.
//  Copyright (c) 2014年 SKYA03 . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)sliderChange:(UISlider *)sender;
@end
