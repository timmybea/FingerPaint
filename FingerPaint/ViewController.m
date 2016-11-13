//
//  ViewController.m
//  FingerPaint
//
//  Created by Tim Beals on 2016-11-11.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "ViewController.h"
#import "DrawView.h"
#import "Line.h"

@interface ViewController ()

@property (nonatomic) UIGestureRecognizer *panGesture;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.drawView = [[DrawView alloc] init];
    self.panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self.drawView action:@selector(drawAction:)];
    [self.drawView addGestureRecognizer:self.panGesture];
    
}

- (DrawView *)drawView {
    return (DrawView *)self.view;
}

- (IBAction)blackButton:(UIButton *)sender
{
    self.drawView.lineColor = [UIColor blackColor];
}

- (IBAction)purpleButton:(UIButton *)sender
{
    self.drawView.lineColor = [UIColor purpleColor];
}

- (IBAction)blueButton:(UIButton *)sender
{
    self.drawView.lineColor = [UIColor blueColor];
}

- (IBAction)greenButton:(UIButton *)sender
{
    self.drawView.lineColor = [UIColor greenColor];
}

- (IBAction)yellowButton:(UIButton *)sender
{
    self.drawView.lineColor = [UIColor yellowColor];
}

- (IBAction)orangeButton:(UIButton *)sender
{
    self.drawView.lineColor = [UIColor orangeColor];
}

- (IBAction)redButton:(id)sender
{
    self.drawView.lineColor = [UIColor redColor];
}

@end
