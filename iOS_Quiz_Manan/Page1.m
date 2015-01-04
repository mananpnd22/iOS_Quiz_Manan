//
//  Page1.m
//  iOS_Quiz_Manan
//
//  Created by MANAN PANDYA on 2014-06-13.
//  Copyright (c) 2014 Pandya. All rights reserved.
//

#import "Page1.h"

@interface Page1 ()

@end

@implementation Page1


-(void) QuestionLoad
{
    srandom(time(NULL));
    
    
    switch (QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"ur que 1 here"];
            [Answer1 setTitle:@"ans 1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"ans 2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ans 3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ans 4" forState:UIControlStateNormal];
            //whichever ans is correct among 4 declare it below
            //Answer2Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"que 2"];
            [Answer1 setTitle:@"ans 1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"ans 2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ans 3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ans 4" forState:UIControlStateNormal];
            //Answer1Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"que 3"];
            [Answer1 setTitle:@"ans 1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"ans 2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ans 3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ans 4" forState:UIControlStateNormal];
            //Answer4Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"que 4"];
            [Answer1 setTitle:@"ans 1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"ans 2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ans 3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ans 4" forState:UIControlStateNormal];
            //Answer2Correct = YES;
            break;
            
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"que 5"];
            [Answer1 setTitle:@"ans 1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"ans 2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ans 3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ans 4" forState:UIControlStateNormal];
            //Answer1Correct = YES;
            break;
            
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"que 6"];
            [Answer1 setTitle:@"ans 1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"ans 2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ans 3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ans 4" forState:UIControlStateNormal];
            //Answer3Correct = YES;
            break;
            
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"que 7"];
            [Answer1 setTitle:@"ans 1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"ans 2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ans 3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ans 4" forState:UIControlStateNormal];
            //Answer4Correct = YES;
            break;
            
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"que 8"];
            [Answer1 setTitle:@"ans 1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"ans 2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ans 3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ans 4" forState:UIControlStateNormal];
            //Answer2Correct = YES;
            break;
            
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"que 9"];
            [Answer1 setTitle:@"ans 1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"ans 2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ans 3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ans 4" forState:UIControlStateNormal];
            //Answer1Correct = YES;
            break;
        
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"que 10"];
            [Answer1 setTitle:@"ans 1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"ans 2" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ans 3" forState:UIControlStateNormal];
            [Answer4 setTitle:@"ans 4" forState:UIControlStateNormal];
            //Answer3Correct = YES;
            break;

        default:
            break;
    }
    
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    
    
    count = 0;
    ScoreNumber = 0;
    
    Message.hidden = YES;
    Score.hidden = YES;
    Home.hidden = YES;
    Replay.hidden = YES;
    
    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;
    
   QuestionSelected = arc4random_uniform(10);
    
    [self QuestionLoad];
    [super viewDidLoad];
   
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}



- (IBAction)buttonPressed:(UIButton *)sender
{
    Answer1.tag = 1;
    Answer2.tag = 2;
    Answer3.tag = 3;
    Answer4.tag = 4;
    
    count = count+1;
    
    if (sender.tag == 1)
    {
        if(Answer1Correct == YES)
        {
            ScoreNumber = ScoreNumber + 1;
        }
    }
    
    else if (sender.tag == 2)
    {
        if(Answer2Correct == YES)
        {
            ScoreNumber = ScoreNumber + 1;
        }
        
    }
    
    else if (sender.tag == 3)
    {
        if(Answer3Correct == YES)
        {
            ScoreNumber = ScoreNumber + 1;
        }
        
    }
    
    else
    {
        if(Answer4Correct == YES)
        {
            ScoreNumber = ScoreNumber + 1;
        }
        
    }
    
    
    if (count<5)
    {
        QuestionSelected = arc4random_uniform(10);
        [self QuestionLoad];
    }
    else
    {
        [self FinalResult];
    }
}


-(void) FinalResult
{
    QuestionText.hidden = YES;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    
    Message.hidden = NO;
    Score.hidden = NO;
    Home.hidden = NO;
    if (ScoreNumber == 0)
    {
        Message.text = [NSString stringWithFormat:@"Please Try Again!!!"];
        Score.text = [NSString stringWithFormat:@"You Have Scored:%i out of 5",ScoreNumber];
        Replay.hidden = NO;
        
    }
    else if (ScoreNumber == 1)
    {
        Message.text = [NSString stringWithFormat:@"Please Try Again!!!"];
        Score.text = [NSString stringWithFormat:@"You Have Scored:%i out of 5",ScoreNumber];
        Replay.hidden = NO;
   
    }
    else if (ScoreNumber == 2)
    {
        Message.text = [NSString stringWithFormat:@"Please Try Again!!!"];
        Score.text = [NSString stringWithFormat:@"You Have Scored:%i out of 5",ScoreNumber];
        Replay.hidden = NO;

    }
    else if (ScoreNumber == 3)
    {
        Message.text = [NSString stringWithFormat:@"Good Job!!!"];
        Score.text = [NSString stringWithFormat:@"You Have Scored:%i out of 5",ScoreNumber];
        
    }
    else if (ScoreNumber == 4)
    {
        Message.text = [NSString stringWithFormat:@"Excellent Work!!!"];
        Score.text = [NSString stringWithFormat:@"You Have Scored:%i out of 5",ScoreNumber];
        
    }
    else if(ScoreNumber == 5)
    {
        Message.text = [NSString stringWithFormat:@"You are a Genius!!!"];
        Score.text = [NSString stringWithFormat:@"You Have Scored:%i out of 5",ScoreNumber];
        
    }
    
    
}




@end
