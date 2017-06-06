//
//  Player.m
//  TwoPlayerMath
//
//  Created by Jimmy Hoang on 2017-06-05.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _lives = 3;
    }
    return self;
}


-(void)loseLife {
    self.lives = self.lives - 1;
}

@end
