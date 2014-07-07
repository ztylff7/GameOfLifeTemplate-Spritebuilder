//
//  Creature.h
//  GameOfLife
//
//  Created by Tianyi Zhang on 07/07/2014.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Creature : CCSprite

// stores the current state of the creature
@property (nonatomic, assign) BOOL isAlive;

// stores the amount of living neighbors
@property (nonatomic, assign) NSInteger livingNeighbors;

- (id)initCreature;

@end