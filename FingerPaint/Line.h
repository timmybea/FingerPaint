//
//  Line.h
//  FingerPaint
//
//  Created by Tim Beals on 2016-11-11.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Line : NSObject

@property (nonatomic) int width;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, strong) NSMutableArray *pointsArray;

- (instancetype)initWithColor:(UIColor *)color;

@end
