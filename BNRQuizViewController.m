//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Devina Subedar on 11/3/15.
//  Copyright (c) 2015 Devina Subedar. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;


@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation BNRQuizViewController

- (IBAction)showQuestion:(id)sender{
    
    //Step to next question
    self.currentQuestionIndex++;
    
    //am i past the last question?
    if (self.currentQuestionIndex == [self.questions count]){
        
        //go back to first question
        self.currentQuestionIndex = 0;
    }
    
    //get string at index in the questions array
    NSString *question = self.questions[self.currentQuestionIndex];
    
    //display string in question label
    self.questionLabel.text = question;
    
    //reset answer label
    self.answerLabel.text = @"???";
}
- (IBAction)showAnswer:(id)sender
{
    //what is answer to current question
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    //display in answer label
    self.answerLabel.text = answer;
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //create two arrays filled with questions and answers
        //and make the pointers point to them
        self.questions = @[@"Devina's last name", @"Devinas Birthday", @"Devinas favorite Color", @"Devina's college name"];
        
        self.answers = @[@"Subedar", @"June 2nd 1994", @"Purple", @"Pace"];
    }
    //return address of new object
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
