//
//  ViewController.h
//  GoodMenu
//
//  Created by 濁沼 広樹 on 12/10/05.
//  Copyright (c) 2012年 横浜国立大学. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    BOOL toggle;
}
@property (weak, nonatomic) IBOutlet UIButton *menuBtn1;
@property (weak, nonatomic) IBOutlet UIButton *menuBtn2;
@property (weak, nonatomic) IBOutlet UIButton *menuBtn3;
@property (readwrite) BOOL toggle;
@property (weak, nonatomic) IBOutlet UIButton *startBtn;

- (IBAction)pushStartBtn:(id)sender;
@end
