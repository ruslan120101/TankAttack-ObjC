//
//  Player.h
//  TankAttack
//
//  Created by Ruslan Ardashev on 1/15/15.
//  Copyright (c) 2015 Ruslan Ardashev. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#include "GameViewController.h"

@interface Player : SKSpriteNode

- (id)initWithLocation:(CGPoint)location WithBottomBoundary:(CGFloat)bottomBoundary WithTopBoundary:(CGFloat)topBoundary WithLeftBoundary:(CGFloat)leftBoundary WithRightBoundary:(CGFloat)rightBoundary;
- (void)updateLocationWithX:(double)xIncrement WithY:(double)yIncrement;

@end