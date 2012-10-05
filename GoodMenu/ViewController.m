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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    menuBtn1.hidden = YES;
    menuBtn2.hidden = YES;
    menuBtn3.hidden = YES;
    toggle = true;
    
}

- (void)viewDidUnload
{
    [self setMenuBtn1:nil];
    [self setMenuBtn2:nil];
    [self setMenuBtn3:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)pushStartBtn:(id)sender {
    if(toggle){
        menuBtn1.hidden = NO;
        menuBtn2.hidden = NO;
        menuBtn3.hidden = NO;
        toggle = false;
    }else{
        menuBtn1.hidden = YES;
        menuBtn2.hidden = YES;
        menuBtn3.hidden = YES;
        toggle = true;
    }
    
}
@end
