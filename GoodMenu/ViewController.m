//
//  ViewController.m
//  GoodMenu
//
//  Created by 濁沼 広樹 on 12/10/05.
//  Copyright (c) 2012年 横浜国立大学. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize menuBtn1;
@synthesize menuBtn2;
@synthesize menuBtn3;
@synthesize toggle;
@synthesize startBtn;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    startBtn.center = CGPointMake(50, 50);
    menuBtn1.center = CGPointMake(50, 50);
    menuBtn2.center = CGPointMake(50, 50);
    menuBtn3.center = CGPointMake(50, 50);
    toggle = true;
    
}

- (void)viewDidUnload
{
    [self setMenuBtn1:nil];
    [self setMenuBtn2:nil];
    [self setMenuBtn3:nil];
    [self setStartBtn:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)pushStartBtn:(id)sender {
    if(toggle){
        [self animation:menuBtn1 :50 :110 :0.2];
        [self animation:menuBtn2 :50 :170 :0.3];
        [self animation:menuBtn3 :50 :230 :0.4];        
        toggle = false;
    }else{
        [self animation:menuBtn1 :50 :50 :0.2];
        [self animation:menuBtn2 :50 :50 :0.4];
        [self animation:menuBtn3 :50 :50 :0.6];
        toggle = true;
    }
    
}

- (void)animation:(UIButton *)btn:(int)x:(int)y:(float)a{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:a];
    btn.center = CGPointMake(x, y);
    [UIView commitAnimations];
}

@end
