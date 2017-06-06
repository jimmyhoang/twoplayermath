//
//  GameModel.h
//  TwoPlayerMath
//
//  Created by Jimmy Hoang on 2017-06-05.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "Player.h"

@interface GameModel : NSObject

@property (nonatomic,strong) Question* question;
@property (nonatomic, assign) int currentPlayerInt;
@property (nonatomic, strong) Player* player1;
@property (nonatomic, strong) Player* player2;


// Question methods
-(NSString*) showQuestion;
-(void)checkAnswer:(NSInteger)answer;


// Player methods
-(Player*) currentPlayer;
-(NSString*) player1Score;
-(NSString*) player2Score;
-(NSString*) player1Life;
-(NSString*) player2Life;
-(NSString*) currentPlayerText;


@end
