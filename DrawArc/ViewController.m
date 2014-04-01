//
//  ViewController.m
//  iPhone_SingleView
//
//  Created by SKYA03  on 14-1-25.
//  Copyright (c) 2014年 SKYA03 . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    float x = M_PI * 0.5;
    
    self.label.text = [NSString stringWithFormat:@"%.2f",x];
    self.imageView.image = [self drawAcrViewWithRadin:x];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIImage *)drawAcrViewWithRadin:(float)radin{
    CGRect rect = CGRectMake(0, 0, 200, 200);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 4.0f);
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    
    CGContextAddArc(context, 100, 100, 98, -M_PI / 2, radin - M_PI * 0.5, 0);
    
    CGContextStrokePath(context);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

- (IBAction)sliderChange:(UISlider *)sender {
    self.label.text = [NSString stringWithFormat:@"%.2f",sender.value];
    
    self.imageView.image = [self drawAcrViewWithRadin:sender.value];
    
}
@end
