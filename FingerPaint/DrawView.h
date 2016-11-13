//
//  DrawView.h
//  FingerPaint
//
//  Created by Tim Beals on 2016-11-11.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawView : UIView

@property (nonatomic, strong) UIColor *lineColor;

- (void)drawAction:(UIGestureRecognizer *)sender;

@end
