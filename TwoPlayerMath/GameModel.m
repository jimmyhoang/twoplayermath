//
//  GameModel.m
//  TwoPlayerMath
//
//  Created by Jimmy Hoang on 2017-06-05.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "GameModel.h"

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _question = [[Question alloc] init];
        _player1 = [[Player alloc] init];
        _player2 = [[Player alloc] init];
        _currentPlayerInt = 1;
    }
    return self;
}

-(NSString *)showQuestion {
    
    if (self.player1.lives <= 0) {
        return @"Winner!";
    } else if (self.player2.lives <= 0) {
        return @"Winner!";
    } else {
        [self.question generateQuestion];
        return self.question.question;
    }

}

-(void)checkAnswer:(NSInteger)answer {
    if (self.question.answer == answer) {
        [self currentPlayer].score = [self currentPlayer].score + 1;
    } else {
        [[self currentPlayer] loseLife];
    }
    
    if (self.currentPlayerInt == 1) {
        self.currentPlayerInt = 2;
    } else {
        self.currentPlayerInt = 1;
    }
    
}

-(Player*)currentPlayer {
    if (self.currentPlayerInt == 1) {
        return self.player1;
    } else {
        return self.player2;
    }
}

-(NSString *)player1Score {
    NSString* score = [NSString stringWithFormat:@"%ld",self.player1.score];
    return score;
    
}

-(NSString *)player2Score {
    NSString* score = [NSString stringWithFormat:@"%ld",self.player2.score];
    return score;
}

-(NSString *)player1Life {
    NSString* score = [NSString stringWithFormat:@"%ld",self.player1.lives];
    return score;
    
}

-(NSString *)player2Life {
    NSString* score = [NSString stringWithFormat:@"%ld",self.player2.lives];
    return score;
}

-(NSString *)currentPlayerText {
    if (self.currentPlayerInt == 1) {
        return @"Player 1";
    } else {
        return @"Player 2";
    }
}

@end
