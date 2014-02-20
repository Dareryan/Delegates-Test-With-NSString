//
//  FISSecondViewController.m
//  Delegates Test
//
//  Created by Dare Ryan on 2/20/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import "FISSecondViewController.h"

@interface FISSecondViewController ()
@property (strong, nonatomic) IBOutlet UITextField *textField;

@end

@implementation FISSecondViewController

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
    [super viewDidLoad];
    NSLog(@"%@",self.text);
    self.textField.text = self.text;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)doneButtonPressed:(id)sender {
    self.text = self.textField.text;
    NSLog(@"%@",self.text);
    [self.delegate passTextBetweenControllers:self didFinishPassingString:self.textField.text];
    
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)returnPressed:(id)sender {
    
    [self.textField resignFirstResponder];
}


@end
