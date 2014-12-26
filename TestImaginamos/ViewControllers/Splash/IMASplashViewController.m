//
//  ViewController.m
//  TestImaginamos
//
//  Created by David Velarde on 12/23/14.
//  Copyright (c) 2014 Imaginamos. All rights reserved.
//

#import "IMASplashViewController.h"

@interface IMASplashViewController ()

@end

@implementation IMASplashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated
{
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(goToMainView) userInfo:nil repeats:NO];
}

-(void)goToMainView
{
    [self performSegueWithIdentifier:@"finishedSplash" sender:nil];
}

@end
