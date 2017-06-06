//
//  Question.m
//  TwoPlayerMath
//
//  Created by Jimmy Hoang on 2017-06-05.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "Question.h"

@implementation Question

-(void)generateQuestion {
    self.leftValue = arc4random_uniform(19) + 1;
    self.rightValue = arc4random_uniform(19) + 1;
    self.question = [NSString stringWithFormat:@"%ld + %ld = ?",self.leftValue, self.rightValue];
    self.answer = self.leftValue + self.rightValue;
}

@end
