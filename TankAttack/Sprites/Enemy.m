//
//  Enemy.m
//  TankAttack
//
//  Created by Ruslan Ardashev on 1/17/15.
//  Copyright (c) 2015 Ruslan Ardashev. All rights reserved.
//

#import "Enemy.h"

@implementation Enemy

- (id)initWithImageNamed:(NSString *)name {
    
    self = [super initWithImageNamed:name];
    
    if (self) {
        
        [self setIsAlive:true];
        return self;
        
    }
    
    else {
        
        return nil;
        
    }
    
}

- (void)updateEnemyXY {

    [NSException raise:NSInternalInconsistencyException
                format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
    
}

- (void)updateEnemyXYWithPlayerX:(CGFloat)playerX {
    
    [NSException raise:NSInternalInconsistencyException
                format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
    
}

- (void)updateEnemyXYWithPlayerX:(CGFloat)playerX WithPlayerY:(CGFloat)playerY {
    
    [NSException raise:NSInternalInconsistencyException
                format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
    
}

- (Boolean)isFiring {
    
    [NSException raise:NSInternalInconsistencyException
                format:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)];
    
    return NO;
    
}

- (double)getBulletOffsetX {
    
    return [self position].x;
    
}

- (double)getBulletOffsetY {
    
    return ([self position].y - [self size].height/2);
    
}

- (void)checkForDeathAndReactAppropriately {
    
    if ([[self healthBar] health] <= 0.0) {
        
        [self death];
        
    }
    
}

@end










