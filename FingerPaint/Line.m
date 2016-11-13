//
//  Line.m
//  FingerPaint
//
//  Created by Tim Beals on 2016-11-11.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "Line.h"

@interface Line ()

@end

@implementation Line

- (instancetype)initWithColor:(UIColor*)color
{
    self = [super init];
    if(self)
    {
        _width = 3.0;
        _color = color;
        _pointsArray = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
