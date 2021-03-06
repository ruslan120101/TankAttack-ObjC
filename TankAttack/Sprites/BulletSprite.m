//
//  BulletSprite.m
//  TankAttack
//
//  Created by Ruslan Ardashev on 1/17/15.
//  Copyright (c) 2015 Ruslan Ardashev. All rights reserved.
//

#import "BulletSprite.h"

@implementation BulletSprite {
    
    Boolean _isGoingUp;
    
}

- (id)initAtX:(CGFloat)xPosition AtY:(CGFloat)yPosition IntoWorld:(World *)world IsGoingUp:(Boolean)isGoingUp {
    
    self = [super initWithImageNamed:@"bullet"];
    
    if (self) {
        
        _isGoingUp = isGoingUp;
        
        [self setPosition:CGPointMake(xPosition, yPosition)];
        [world addChild:self];
        return self;
        
    }
    
    else {
        
        return nil;
        
    }
    
}

- (void)updateXY {
    
    CGPoint newPosition;
    
    if (_isGoingUp) {
        
        newPosition = CGPointMake([self position].x, ([self position].y + BULLET_SPEED));
        
    }
    
    else {
        
        newPosition = CGPointMake([self position].x, ([self position].y - BULLET_SPEED));
        
    }
    
    [self setPosition:newPosition];
    
}



@end



