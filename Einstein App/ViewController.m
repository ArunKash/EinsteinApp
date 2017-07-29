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
@property (weak, nonatomic) IBOutlet UIImageView *camImage;
@property (weak, nonatomic) IBOutlet UILabel *visionLabel;


- (IBAction)VisionBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *emotionBtn;
@property (weak, nonatomic) IBOutlet UIImageView *emotionIcon;
@property (weak, nonatomic) IBOutlet UILabel *emotionLabel;

@property (weak, nonatomic) IBOutlet UIButton *predictBtn;
@property (weak, nonatomic) IBOutlet UIImageView *predictIcon;
@property (weak, nonatomic) IBOutlet UILabel *predictLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self hideAllButtons];
    [self applyButtonStyle:self.Button];
    [self applyButtonStyle:self.emotionBtn];
    [self applyButtonStyle:self.predictBtn];
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    [self showAnimatedStyle2];
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
-(void)hideAllButtons {
    
    self.emotionIcon.alpha = 0.0f;
    self.predictIcon.alpha = 0.0f;
    self.camImage.alpha = 0.0f;
    self.visionLabel.alpha = 0.0f;
    self.emotionLabel.alpha = 0.0f;
    self.predictLabel.alpha = 0.0f;
    self.Button.alpha = 0.0f;
    self.emotionBtn.alpha = 0.0f;
    self.predictBtn.alpha =0.0f;
}

-(void)showAnimatedStyle1 {
    
    [UIView animateWithDuration:0.5f
                          delay:0.5f
                        options:UIViewAnimationOptionAllowUserInteraction
                     animations:^{
                         //First
                         
                         self.Button.alpha = 1.0f;
                         self.emotionBtn.alpha = 1.0f;
                         self.predictBtn.alpha =1.0f;
                     }
                     completion:^(BOOL finished) {
                         [UIView animateWithDuration:0.5f
                                               delay:0.5f
                                             options:UIViewAnimationOptionAllowUserInteraction
                                          animations:^{
                                              //Secound
                                              self.emotionIcon.alpha = 1.0f;
                                              self.predictIcon.alpha = 1.0f;
                                              self.camImage.alpha = 1.0f;
                                              
                                          }
                                          completion:^(BOOL finished) {
                         [UIView animateWithDuration:1.5f
                                          animations:^{
                                             //Third
                                              self.visionLabel.alpha = 1.0f;
                                              self.emotionLabel.alpha = 1.0f;
                                              self.predictLabel.alpha = 1.0f;
                                          }];
                                          }];
                     }];
}

-(void)showAnimatedStyle2 {
    
    [UIView animateWithDuration:0.5f
                          delay:0.5f
                        options:UIViewAnimationOptionAllowUserInteraction
                     animations:^{
                         //First
                         
                         
                     }
                     completion:^(BOOL finished) {
                         [UIView animateWithDuration:0.5f
                                               delay:0.5f
                                             options:UIViewAnimationOptionAllowUserInteraction
                                          animations:^{
                                              //Secound
                                              
                                              self.Button.alpha = 1.0f;
                                              self.camImage.alpha = 1.0f;
                                              self.visionLabel.alpha = 1.0f;

                                            
                                              
                                          }
                                          completion:^(BOOL finished) {
                                              
                                              //start
                                              
                                              [UIView animateWithDuration:0.5f
                                                                    delay:0.5f
                                                                  options:UIViewAnimationOptionAllowUserInteraction
                                                               animations:^{
                                                                   //third
                                                                   self.emotionIcon.alpha = 1.0f;
                                                                   self.emotionBtn.alpha = 1.0f;
                                                                   self.emotionLabel.alpha = 1.0f;
                                                               }
                                                               completion:^(BOOL finished) {
                                                                   [UIView animateWithDuration:1.5f
                                                                                    animations:^{
                                                                                        //Fourth
                                                                                        self.predictBtn.alpha = 1.0f;
                                                                                        self.predictIcon.alpha = 1.0f;
                                                                                        self.predictLabel.alpha = 1.0f;
                                            
                                                                                    }];
                                                               }];
                                              
                                              //here
                                              
                                              
                                          }];
                     }];
}
@end
