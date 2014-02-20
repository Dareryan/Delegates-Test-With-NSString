//
//  FISSecondViewController.h
//  Delegates Test
//
//  Created by Dare Ryan on 2/20/14.
//  Copyright (c) 2014 Dare Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TwoViewControllersDelegate <NSObject>

-(void)passTextBetweenControllers:(UIViewController *) controller didFinishPassingString:(NSString *)string;

@end

@interface FISSecondViewController : UIViewController

@property (weak, nonatomic) id <TwoViewControllersDelegate> delegate;

@property (strong, nonatomic) NSString *text;

@end
