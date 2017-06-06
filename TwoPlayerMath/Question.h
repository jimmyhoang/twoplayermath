//
//  Question.h
//  TwoPlayerMath
//
//  Created by Jimmy Hoang on 2017-06-05.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) NSInteger leftValue;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSString* question;


-(void)generateQuestion;

@end
