//
//  creature.m
//  GameOfLife
//
//  Created by Tianyi Zhang on 02/07/2014.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "creature.h"

@implementation Creature

- (instancetype)initCreature {
    // since we made Creature inherit from CCSprite, 'super' below refers to CCSprite
    self = [super initWithImageNamed:@"GameOfLifeAssets/Assets/bubbles.png"];
    
    if (self) {
        self.isAlive = NO;
    }
    
    return self;
}

- (void)setIsAlive:(BOOL)newState {
    //when you create an @property as we did in the .h, an instance variable with the leading underscore is automatically created for u
    _isAlive = newState;
    // 'visible' is a property of any class that inherits from CCNode. CCSprite is a subclass of CCNode, and Creature is a subclass of CCSprite, so Creatures have a visible property
    self.visible = _isAlive;
}
@end
