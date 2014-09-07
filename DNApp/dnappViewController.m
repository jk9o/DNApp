//
//  dnappViewController.m
//  DNApp
//
//  Created by Johannes Kempf on 06.09.14.
//  Copyright (c) 2014 jk. All rights reserved.
//

#import "dnappViewController.h"

@interface dnappViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIView *dialogView;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
- (IBAction)loginButtonDidPress:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation dnappViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self setNeedsStatusBarAppearanceUpdate];
    
    self.emailTextField.delegate = self;
    self.passwordTextField.delegate = self;

}

- (IBAction)unwindFromView:(UIStoryboardSegue*)segue { }

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void) textFieldDidBeginEditing:(UITextField *)textField {
    // Do something if textfield is focused
    NSLog(@"I`am fired! :(");
}

- (IBAction)loginButtonDidPress:(id)sender {
    
    [UIView animateWithDuration:0.1 animations:^{
        self.loginButton.transform = CGAffineTransformMakeTranslation(10, 0);
    } completion:^(BOOL finished) {
        // Step 2
        [UIView animateWithDuration:0.1 animations:^{
            self.loginButton.transform = CGAffineTransformMakeTranslation(-10, 0);
        } completion:^(BOOL finished) {
            // Step 3
            [UIView animateWithDuration:0.1 animations:^{
                self.loginButton.transform = CGAffineTransformMakeTranslation(0, 0);
            }];
        }];
    }];
    
    // animateWithDuration with Damping
    [UIView animateWithDuration:0.7 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:0 options:0 animations:^{
        
        //Change the size of the dialogView
        [self.dialogView setFrame:CGRectMake(self.dialogView.frame.origin.x, self.dialogView.frame.origin.y, self.dialogView.frame.size.width, 320)];
    } completion:^(BOOL finished) {
    }];
}
@end
