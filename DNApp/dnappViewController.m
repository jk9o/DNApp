//
//  dnappViewController.m
//  DNApp
//
//  Created by Johannes Kempf on 06.09.14.
//  Copyright (c) 2014 jk. All rights reserved.
//

#import "dnappViewController.h"

@interface dnappViewController ()

@end

@implementation dnappViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self setNeedsStatusBarAppearanceUpdate];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindFromView:(UIStoryboardSegue*)segue { }

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

@end
