//
//  ViewController.m
//  Einstein App
//
//  Created by Cognizant Technology Solutions on 27/07/17.
//  Copyright © 2017 Cognizant Technology Solutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *Button;
- (IBAction)VisionBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *emotionBtn;
@property (weak, nonatomic) IBOutlet UIButton *predictBtn;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *EmotionLeading;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftMove;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self applyButtonStyle:self.Button];
    [self applyButtonStyle:self.emotionBtn];
    [self applyButtonStyle:self.predictBtn];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)VisionBtn:(id)sender {
}
-(void)applyButtonStyle:(UIButton *)button
{
    button.layer.cornerRadius=8.0f;
    button.layer.masksToBounds=NO;
    //button.layer.borderWidth = 1.0f;
    button.layer.borderColor = [UIColor darkGrayColor].CGColor;
    
    button.layer.shadowColor = [UIColor grayColor].CGColor;
    button.layer.shadowOpacity = 0.8;
    button.layer.shadowRadius = 4;
    button.layer.shadowOffset = CGSizeMake(4.0f, 4.0f);

}
@end
