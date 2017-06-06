//
//  ViewController.m
//  TwoPlayerMath
//
//  Created by Jimmy Hoang on 2017-06-05.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *player1ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *player2ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *player1LivesLabel;
@property (weak, nonatomic) IBOutlet UILabel *player2LivesLabel;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (nonatomic, strong) GameModel* gameModel;
@property (nonatomic, strong) NSMutableString* userAnswer;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _userAnswer = [[NSMutableString alloc] init];
    _gameModel = [[GameModel alloc] init];
    _questionLabel.text = [NSString stringWithFormat:@"Player 1: %@",_gameModel.showQuestion];
    _player1ScoreLabel.text = @"Player 1: 0";
    _player2ScoreLabel.text = @"Player 2: 0";
    _player1LivesLabel.text = [NSString stringWithFormat:@"Player 1: %@",[self.gameModel player1Life]];
    _player2LivesLabel.text = [NSString stringWithFormat:@"Player 2: %@",[self.gameModel player2Life]];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)enterButton:(id)sender {
    NSString* string = [NSString stringWithString:self.userAnswer];
    NSInteger answer = [string integerValue];
    [self.gameModel checkAnswer:answer];
    self.player1ScoreLabel.text = [NSString stringWithFormat:@"Player 1: %@",[self.gameModel player1Score]];
    self.player2ScoreLabel.text = [NSString stringWithFormat:@"Player 2: %@",[self.gameModel player2Score]];
    self.questionLabel.text = [NSString stringWithFormat:@"%@: %@",[self.gameModel currentPlayerText],self.gameModel.showQuestion];
    self.player1LivesLabel.text = [NSString stringWithFormat:@"Player 1: %@",[self.gameModel player1Life]];
    self.player2LivesLabel.text = [NSString stringWithFormat:@"Player 2: %@",[self.gameModel player2Life]];
    [self.userAnswer setString:@""];

}
- (IBAction)zeroButton:(id)sender {
    [self.userAnswer appendString:@"0"];
}
- (IBAction)oneButton:(id)sender {
    [self.userAnswer appendString:@"1"];
}
- (IBAction)twoButton:(id)sender {
    [self.userAnswer appendString:@"2"];
}
- (IBAction)threeButton:(id)sender {
    [self.userAnswer appendString:@"3"];
}
- (IBAction)fourButton:(id)sender {
    [self.userAnswer appendString:@"4"];
}
- (IBAction)fiveButton:(id)sender {
    [self.userAnswer appendString:@"5"];
}
- (IBAction)sixButton:(id)sender {
    [self.userAnswer appendString:@"6"];
}
- (IBAction)sevenButton:(id)sender {
    [self.userAnswer appendString:@"7"];
}
- (IBAction)eightButton:(id)sender {
    [self.userAnswer appendString:@"8"];
}
- (IBAction)nineButton:(id)sender {
    [self.userAnswer appendString:@"9"];
}

@end
