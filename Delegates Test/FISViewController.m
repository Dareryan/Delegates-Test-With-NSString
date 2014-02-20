//
//  FISViewController.m
//  Delegates Test
//
//  Created by Dare Ryan on 2/20/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import "FISViewController.h"
#import "FISSecondViewController.h"

@interface FISViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textField;



@end

@implementation FISViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)textField:(id)sender {
    
    self.textFieldString = self.textField.text;
    
    NSLog(@"%@",self.textFieldString);
    
    [self.textField resignFirstResponder];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    FISSecondViewController *secondView = [segue destinationViewController];
    
    secondView.text = self.textFieldString;
    secondView.delegate = self;
    
    
}

-(void)passTextBetweenControllers:(UIViewController *) controller didFinishPassingString:(NSString *)string
{
    self.textFieldString = string;
    self.textField.text = self.textFieldString;
    NSLog(@"%@",self.textFieldString);
    
}


@end
