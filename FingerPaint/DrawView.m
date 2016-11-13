//
//  DrawView.m
//  FingerPaint
//
//  Created by Tim Beals on 2016-11-11.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "DrawView.h"
#import "Line.h"

@interface DrawView ()

@property (nonatomic, strong) NSMutableArray *linesArray;

@end


@implementation DrawView

- (instancetype)init
{
    self = [super init];
    if(self)
    {
        _linesArray = [[NSMutableArray alloc] init];
        _lineColor = [UIColor blackColor];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder //use when initializing a view from the storyboard
{
    self = [super initWithCoder:coder];
    if (self)
    {
        _linesArray = [[NSMutableArray alloc] init];
        _lineColor = [UIColor blackColor];
    }
    return self;
}

- (void)drawAction:(UIGestureRecognizer *)sender
{
    CGPoint point = [sender locationInView:self];

    if(sender.state == UIGestureRecognizerStateBegan)
    {
        Line *line = [[Line alloc] initWithColor:self.lineColor];
        [line.pointsArray addObject:[NSValue valueWithCGPoint:point]];
        [self.linesArray addObject:line];
    }
    else if (sender.state == UIGestureRecognizerStateChanged)
    {
        Line *currentLine = [self.linesArray lastObject];
        [currentLine.pointsArray addObject:[NSValue valueWithCGPoint:point]];
    }
    
    [self setNeedsDisplay]; //calls drawRect
    NSLog(@"%@", NSStringFromCGPoint(point));
}

- (void)drawRect:(CGRect)rect {

    for(Line *line in self.linesArray)
    {
        UIBezierPath *path = [UIBezierPath bezierPath];
        [line.color setStroke];
        [path setLineWidth:2];
        
        for(NSValue *point in line.pointsArray)
        {
            CGPoint p = [point CGPointValue];
            
            if(point == [line.pointsArray objectAtIndex:0])
            {
                [path moveToPoint:p];
            }
            else
            {
                
                [path addLineToPoint:p];
            }
        }
        [path stroke];
    }
}

@end
